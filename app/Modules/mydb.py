import sqlite3, os

###SQLITE3 DATABASE CLASS###
class MyDB():

    def __init__(self, db_address):
        self.address = db_address

    ###DB FUNCTIONS###
    def find_pair(self):
        #ACTIVE LEARNING DROPS IN HERE :)#
        #here just choose two instances with lowest number of comparisons
        #output 2 video_ids with lowest num_comparisons
#        sql_str = '''SELECT video_id, filepath
#                FROM (
#                    SELECT *
#                    FROM videos
#                    ORDER BY num_comparisons ASC 
#                    LIMIT 20 
#                    )
#                ORDER BY RANDOM() 
#                LIMIT 2'''
        sql_str = '''SELECT video_id, filepath
                FROM videos
                ORDER BY RANDOM() 
                LIMIT 2'''
        return sqlite3.connect(self.address).cursor().execute(sql_str).fetchall()

    def write_comparison_row(self, row_dict):
        #input is dict e.g. {'video1': 2, 'video2': 3, 'winner': 2, 'session_id': 2}
        sql_str = '''INSERT INTO comparisons(v1,v2,winner,suuid) 
                    VALUES (?,?,?,?)'''
        engine = sqlite3.connect(self.address)
        c = engine.cursor().execute(sql_str, (row_dict['v1'], row_dict['v2'], row_dict['winner'], row_dict['suuid']))
        engine.commit()
        engine.close()

    def update_winner(self, comparison_id, winner_video_id):
        #winner of a match - winner is a video_id
        sql_str = '''UPDATE comparisons
                    SET winner=?
                    WHERE comparison_id=?'''
        engine = sqlite3.connect(self.address)
        c = engine.cursor().execute(sql_str, (winner_video_id, comparison_id))
        engine.commit()
        engine.close()

    def update_video_counter(self, video_id):
        #input is video_id (int)
        sql_str = '''UPDATE videos
                    SET num_comparisons=num_comparisons+1
                    WHERE video_id=?'''
        engine = sqlite3.connect(self.address)
        c = engine.cursor().execute(sql_str, (int(video_id),))
        engine.commit()
        engine.close()

    def write_session_row(self, row_dict):
        #input is dict: {'suuid': jhqjh, 'user_id': 34, 'start_time': str(datetime.now())}
        sql_str = '''INSERT INTO sessions(suuid,user_id,start_time)
                    VALUES (?,?,?)'''
        engine = sqlite3.connect(self.address)
        c = engine.cursor().execute(sql_str, (row_dict['suuid'], row_dict['user_id'], row_dict['start_time']))
        engine.commit()
        engine.close()

    def register_user(self, username, password, license):
        #takes in instance form input [username and password]
        sql_str = '''INSERT INTO users(username,password,license) 
                     VALUES (?,?,?)'''   
        engine = sqlite3.connect(self.address)
        c = engine.cursor().execute(sql_str, (username, password, license))
        engine.commit()
        engine.close()

    def authenticate_user(self, username, password):
        #takes in instance form input [username and password]
        sql_str = '''SELECT user_id 
                  FROM users
                  WHERE username=? AND password=?'''
        reg_user = sqlite3.connect(self.address).cursor().execute(sql_str, (username, password) ).fetchall()
        return reg_user or False

    def dump_db(self):
        #dump the contents of the database file
        #create filename
        filename = os.path.dirname(os.path.abspath(self.address)) + '/dump.sql'
        con = sqlite3.connect(self.address)
        with open(filename, 'wb') as f:
            for line in con.iterdump():
                f.write('%s\n' % line)

    def build_db(self, dump_file):
        #rebuild the databse from the dump sql file
        with open(dump_file, 'rb') as f:
            sql = f.read()
        with open(self.address, 'wb') as f:
            e = sqlite3.connect(self.address)
            c = e.cursor()
            c.executescript(sql)


