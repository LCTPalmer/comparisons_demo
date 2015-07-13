from flask.ext.login import UserMixin

#class for website users
class User(UserMixin):

    def __init__(self, username, password, id):
            self.username = username
            self.password = password
            self.id = id
 
    def is_authenticated(self):
        return True
 
    def is_active(self):
        return True
 
    def is_anonymous(self):
        return False
 
    def get_id(self):
        return unicode(self.id)
 
    def __repr__(self):
        return '<User %r>' % (self.username)
