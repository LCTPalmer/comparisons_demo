import os
import sqlite3

db_filename = 'pairwise_comparisons.db'
schema_filename = 'schema_def.sql'
db_is_new = not os.path.exists(db_filename)

#get list of files to populate videos table
video_root = '../static/videos'
flask_video_root = '/static/videos' # flask takes static as root dir for vids/pics
video_filepaths = os.listdir(video_root)[:10] ###!!! only taking 10 for testing!!!
filepaths = []
for vid in video_filepaths:
    filepaths.append(flask_video_root + '/' + vid)


with sqlite3.connect(db_filename) as conn:
    if db_is_new:

        print 'Creating schema'
        with open(schema_filename, 'rt') as f:
            schema = f.read()
        conn.executescript(schema)

        #populate videos table
        for filepath in filepaths:
            conn.execute("""insert into videos(filepath, num_comparisons) values(?,?)""", (filepath, 0))

        #populate users
        conn.execute('INSERT INTO users(username, password, license) VALUES (?,?,?)', ('admin', 'admin', True))
        #conn.execute('INSERT INTO users(username, password) VALUES (?,?)', ('user1', 'superpassword'))

        
    else:
        print 'Database exists, assume schema does, too.'
