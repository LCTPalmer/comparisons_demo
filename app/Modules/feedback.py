import os, copy, sqlite3, numpy as np, trueskill as ts

#plotting
from bokeh.plotting import figure, ColumnDataSource
from bokeh.models import HoverTool, PanTool, WheelZoomTool
from bokeh.embed import components
from bokeh.models import PrintfTickFormatter

def get_ts(m):

    #het the comparisons from the db
    sql_str = '''SELECT v1, v2, suuid, winner
                FROM comparisons'''
    full_list = sqlite3.connect(m.address).cursor().execute(sql_str).fetchall()

    #get index of first comparisonin last session
    last_suuid = full_list[-1][2]
    sess_vids_compared = [] #container for videos compared in the most recent session
    new_sess_ind = 0 # initialise
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
    ts_list = [{'video_id':v[0], 'filepath':v[1], 'rating':ts.Rating(mu=25+np.random.randn())} for v in video_list]
    #add in boolean if compared
    for ts_vid in ts_list:
        if ts_vid['video_id'] in sess_vids_compared:
            ts_vid['compared_in_sess'] = True
        else:
            ts_vid['compared_in_sess'] = False

    #go through comparisons, updating the ts_ratings
    en_start = 0 #new_sess_ind - 20 #so it looks like more of an impact?
    for ind, comp in enumerate(full_list[en_start:]):

        #if this index is the first of the last session, log the before list
        if ind == new_sess_ind:
            before_ts_list = copy.deepcopy(ts_list)

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
    
    #turn list of dicts into data source for plot
    ratings_before = [r['rating'].mu for r in ts_before if r['compared_in_sess']]
    y_pos_before = [0] * len(ratings_before) # [0 for r in ts_before if r['compared_in_sess']]
    ratings_after = [r['rating'].mu for r in ts_after if r['compared_in_sess']]
    y_pos_after = [1] * len(ratings_after) #[1 for r in ts_after if r['compared_in_sess']]
    filepaths =  [r['filepath'] for r in ts_after if r['compared_in_sess']]
    source = ColumnDataSource({'ratings_after': ratings_after,  'y_pos_after': y_pos_after,
                               'ratings_before': ratings_before, 'y_pos_before': y_pos_before,
                               'filepaths': filepaths})

    tooltip_str = """
                <video width="300" height="225" autoplay loop>
                    <source src=@filepaths type="video/ogg">
                </video> 
            """

    p = figure(tools=[HoverTool(names=['vid'], tooltips=tooltip_str), PanTool(), 'xwheel_zoom'], 
                plot_width=1200, plot_height=500,
                x_range = (0, 45), y_range = (-0.5, 1.5),
                toolbar_location="below")
    p.circle('ratings_before', 'y_pos_before', name='vid', source=source, size=10, alpha = .7)
    p.circle('ratings_after', 'y_pos_after', name='vid', source=source, size=10, color='red', alpha = .7)
    p.text(.5, 0, text=["Demand before your comparisons"], text_color='blue')
    p.text(.5, 1, text=["Demand after your comparisons"], text_color='red')
    for rb, ra in zip(ratings_before, ratings_after):
        p.line([rb, ra], [0, 1], color='black', line_dash=[5,5]) 

    #formatting
    p.yaxis[0].formatter = PrintfTickFormatter(format="")
    p.xaxis.axis_label = "Estimate of Demand"

    return components(p) #(js_script, div)
