import os, copy, sqlite3, numpy as np, trueskill as ts

def get_ts(m):

    #het the comparisons from the db
    sql_str = '''SELECT v1, v2, suuid, winner
                FROM comparisons'''
    full_list = sqlite3.connect(m.address).cursor().execute(sql_str).fetchall()

    #get index of first comparisonin last session
    last_suuid = full_list[-1][2]
    for ind, comp in enumerate(full_list):
        if comp[2] != last_suuid:
            pass
        else:
            new_sess_ind = ind
            break

    #TRUESKILL
    #how many vids are there
    sql_str = '''SELECT video_id, filepath
                FROM videos'''
    video_list = sqlite3.connect(m.address).cursor().execute(sql_str).fetchall()
    num_videos = len(video_list)

    #set up initial ts rankings 
    ts_list = []
    for video in video_list:
        ts_list.append(ts.Rating())

    #go through comparisons, updating the ts_ratings
    for ind, comp in enumerate(full_list):

        #if this index is the first of the last session, log the before list
        if ind == new_sess_ind:
            before_ts_list = copy.copy(ts_list)

        #else update the ratings again 
        v1, v2, winner = comp[0]-1, comp[1]-1, comp[3]-1 #-1 for zeros_based indexing
        if winner == v1:
            nv1, nv2 = ts.rate_1vs1(ts_list[v1], ts_list[v2])
        elif winner == v2:
            nv2, nv1 = ts.rate_1vs1(ts_list[v2], ts_list[v1])
        
        #update the ratings
        ts_list[v1], ts_list[v2] = nv1, nv2

    #turn into video_id rankings
    before_ts_list = [(ii+1, r.mu) for ii, r in enumerate(before_ts_list)]
    after_ts_list = [(ii+1, r.mu) for ii,r in enumerate(ts_list)]
    
    sorted_before = sorted(before_ts_list, key = lambda x: x[1])
    sorted_after = sorted(after_ts_list, key = lambda x: x[1])

    return sorted_before, sorted_after

def embed_bokeh():
    pass
