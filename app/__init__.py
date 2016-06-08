from flask import Flask, render_template, request, redirect, url_for, session, flash
from flask.ext.login import LoginManager, login_user, logout_user, login_required
from uuid import uuid4
from datetime import datetime
from Modules.mydb import MyDB
from Modules.user import User
import sqlite3, os, pdb

###SETUP###
app = Flask(__name__)
app.config.from_pyfile('../config.py')
login_manager = LoginManager()
login_manager.init_app(app)
db_address = 'database/pairwise_comparisons.db'
m = MyDB(db_address)
if os.path.isfile(os.path.abspath('database/dump.sql')):
    print 'Building db from dump.sql .....'
    m.build_db(os.path.abspath('database/dump.sql'))

###load_user helper function (need for flask-login)
@login_manager.user_loader
def load_user(user_id):
    #returns the User object assigned to this id
    engine = sqlite3.connect(db_address)
    con = engine.cursor()
    user_details = con.execute('SELECT username,password FROM users WHERE user_id=? LIMIT 1', (int(user_id),)).fetchall()
    current_user=None
    if user_details:
        username = user_details[0][0]
        password = user_details[0][1]
        current_user = User(username=username, password=password, id = int(user_id))
    return current_user

###--------------------------------------------------------------------------------------------------------------
###VIEWS###
###--------------------------------------------------------------------------------------------------------------

#---login page---#
@app.route('/', methods=['GET', 'POST'])
@app.route('/login', methods=['GET', 'POST'])
def login():
    #serve the login form
    if request.method=='GET':
        return render_template('login.html')

    #get user details from form
    if request.method=='POST':
        username = request.form['username']
        password = request.form['password']
        new_user_id = m.authenticate_user(username=username, password=password)
        if not new_user_id: 
            flash('Username or password invalid', 'error')
            return redirect(url_for('login'))
        else: #i.e. user is in db
            id = new_user_id[0][0]#get int value
            new_user = User(username=username, password=password, id=id)
            login_user(new_user)
            session['SUUID'] = unicode(uuid4())
            #update db with this session
            session_row = {'suuid': session['SUUID'], 'user_id': int(id), 'start_time': unicode(datetime.now())}
            m.write_session_row(session_row)
            return redirect(url_for('instructions'))

#---instructions page---#
@app.route('/instructions', methods = ['GET', 'POST'])
@login_required
def instructions():
    if request.method=='POST':
        return redirect(url_for('example'))
    if request.method=='GET':
        return render_template('instructions.html')

#---examples page---#
@app.route('/example', methods=['GET', 'POST'])
@login_required
def example():
    #same as comparisons but without updating db
    if request.method=='POST':
        if request.form['choice']=='continue':
            return redirect(url_for('remember'))
        else:
            return redirect(url_for('example_processing'))
    if request.method=='GET':
        #choose image pair
        image_pair = m.find_pair()
        session['IMAGE_PAIR'] = image_pair
        #render the html template
        return render_template('example.html', title='Active Image Comparison', image_pair=image_pair)

@app.route('/example_processing')
@login_required
def example_processing():
    #helper redirect function so that refresh doesn't re-post info
    return redirect(url_for('example'))

#---reminder page---#
@app.route('/remember', methods = ['GET', 'POST'])
@login_required
def remember():
    if request.method=='POST':
        return redirect(url_for('comparisons'))
    if request.method=='GET':
        return render_template('remember.html')

#---comparisons page---#
@app.route('/comparisons', methods=['GET', 'POST'])
@login_required
def comparisons():

    if request.method=='GET':

        #choose image pair
        image_pair = m.find_pair()
        session['IMAGE_PAIR'] = image_pair
        #render the html template
        return render_template('comparisons.html', title='Active Image Comparison', image_pair=image_pair)

    if request.method=='POST':

        #retrieve the image pair from session variable
        image_pair = session['IMAGE_PAIR']
        session.pop('IMAGE_PAIR', None)
        v1_id = image_pair[0][0]
        v2_id = image_pair[1][0]

        #update the comparison matrix
        if request.form['choice']=='Video 1':
            comp_row = {'v1' : v1_id, 'v2' : v2_id, 'winner' : v1_id, 'suuid' : session['SUUID']}

        elif request.form['choice']=='Video 2':
            comp_row = {'v1' : v1_id, 'v2' : v2_id, 'winner' : v2_id, 'suuid' : session['SUUID']}

        #update the database 
        m.write_comparison_row(comp_row)
        m.update_video_counter(v1_id)
        m.update_video_counter(v2_id)

        #redirect to another page to avoid form resubmission
        return redirect(url_for('comparison_processing'))

@app.route('/comparison_processing')
@login_required
def comparison_processing():
    #helper redirect function so that refresh doesn't re-post info
    return redirect(url_for('comparisons'))

#---logout page---#
@app.route("/logout")
@login_required
def logout():
    logout_user()
    print 'dumping db to dump.sql file .....'
    m.dump_db()

#before, after = feedback.get_ts_change()
#return render_template('feedback.html', before=before, after=after) #maybe BOKEH?
    return redirect(url_for('login'))

if __name__=='__main__':
    app.run(debug=True)
