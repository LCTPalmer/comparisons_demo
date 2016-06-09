import os, copy, sqlite3, numpy as np, trueskill as ts

#plotting
from bokeh.plotting import figure, ColumnDataSource
from bokeh.models import HoverTool, PanTool, WheelZoomTool
from bokeh.embed import components

def get_ts(m):

    #het the comparisons from the db
    sql_str = '''SELECT v1, v2, suuid, winner
                FROM comparisons'''
    full_list = sqlite3.connect(m.address).cursor().execute(sql_str).fetchall()

    #get index of first comparisonin last session
    last_suuid = full_list[-1][2]
    sess_vids_compared = [] #container for videos compared in the most recent session
    for ind, comp in enumerate(reversed(full_list)):
        if comp[2] == last_suuid:
            sess_vids_compared.append(comp[0])
            sess_vids_compared.append(comp[1])
        else:
            new_sess_ind = len(full_list) - ind
            break
    sess_vids_compared = list(set(sess_vids_compared))

    #TRUESKILL
    #how many vids are there
    sql_str = '''SELECT video_id, filepath
                FROM videos'''
    video_list = sqlite3.connect(m.address).cursor().execute(sql_str).fetchall()

    #set up initial ts rankings 
    ts_list = [{'video_id':v[0], 'filepath':v[1], 'rating':ts.Rating()} for v in video_list]
    #add in boolean if compared
    for ts_vid in ts_list:
        if ts_vid['video_id'] in sess_vids_compared:
            ts_vid['compared_in_sess'] = True
        else:
            ts_vid['compared_in_sess'] = False

    #go through comparisons, updating the ts_ratings
    for ind, comp in enumerate(full_list):

        #if this index is the first of the last session, log the before list
        if ind == new_sess_ind:
            before_ts_list = copy.copy(ts_list)

        #else update the ratings again 
        v1, v2, winner = comp[0]-1, comp[1]-1, comp[3]-1 #TODO test if need -1 for zeros_based indexing
        if winner == v1:
            nv1, nv2 = ts.rate_1vs1(ts_list[v1]['rating'], ts_list[v2]['rating'])
        elif winner == v2:
            nv2, nv1 = ts.rate_1vs1(ts_list[v2]['rating'], ts_list[v1]['rating'])

        #update the ratings
        ts_list[v1]['rating'], ts_list[v2]['rating'] = nv1, nv2

    return before_ts_list, ts_list 

def get_bokeh_js(ts_before, ts_after):
    '''turn figure into js and tag for embedding'''
    p = figure(plot_width=400, plot_height=400,
           title=None, toolbar_location="below")
    p.circle([1, 2, 3, 4, 5], [2, 5, 8, 2, 7], size=10)

    return components(p) #(js_script, div)
