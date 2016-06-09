#plotting
from bokeh.plotting import figure, output_file, show, ColumnDataSource
from bokeh.models import HoverTool, PanTool, WheelZoomTool

#embedding
from bokeh.embed import components, autoload_static, file_html
from bokeh.resources import Resources
from jinja2 import Template, Environment, FileSystemLoader
import os, six, webbrowser, struct

import numpy as np

#bokeh settings
output_file("toolbar.html")
figure_size = 400

#get paths set up - always use relative for x-platform compatibility
js_dir = ''
data_path = 'static' #RELATIVE TO JS DIRECTORY! (js calls these files)

X = np.array([1, 2, 3, 4, 5]) #MDS component 1
Y = np.array([2, 5, 8, 2, 7]) #MDS component 2
ratings = [2,5,4,6,10] #trueskill ratings
video_names = ["v1.ogv", "v1.ogv", "v1.ogv", "v1.ogv", "v1.ogv"]

#construct information to display on hover
video_paths = [os.path.join(data_path, name) for name in video_names]
time_stamps = [video_name[:2] for video_name in video_names]

#put into Bokeh format
source = ColumnDataSource(
        data=dict(
            x=X,
            y=Y,
            video_path=video_paths,
            time_stamp=time_stamps,
            rating=ratings
        )
    )

#HTML for displaying the video on hover
hover = HoverTool(
        tooltips="""
        <div>
            <div style="font-size:10pt;">
                load rating: @rating<br>
                recorded at: @time_stamp
            </div>
			
            <video width="300" autoplay loop>
                <source src=@video_path type="video/ogg">
            </video> 
        </div>
        """
    )

#set up the plot
p = figure(tools=[hover, PanTool(), WheelZoomTool()], 
           title="Perceptual load in driving videos")#, responsive=True)
p.logo=None
#p.toolbar_location=None

#map to colors from ratings
min_rating = min(ratings); max_rating = max(ratings)
ratings_norm = [(rating - min_rating) / float(max_rating - min_rating) for rating in ratings]
colors = [rating*255 for rating in ratings_norm]
colors_rgb = [(color,color,color) for color in colors]
colors_hex = ['#' + struct.pack('BBB',*color_rgb).encode('hex') for color_rgb in colors_rgb]

#draw the scatter plot
p.circle('x', 'y', size=10, source=source, fill_color=colors_hex, line_color='black', alpha=0.7)

def autoload_static_write(fig, script_path):
    '''turn figure into js and tag for embedding'''
    #script_path_abs = os.path.abspath(script_path)
    script, tag = autoload_static(p, resources=Resources('cdn'), script_path=script_path)
    #save the script
    with open(script_path, 'w') as f:
        f.write(script)
    return tag

script_path = os.path.join(js_dir, 'plot1_embed.js')
tag = autoload_static_write(fig=p, script_path=script_path)
print tag

# #get template
j2_env = Environment(loader=FileSystemLoader('./'), trim_blocks=True)
template = j2_env.get_template('bokeh_template.html')

html_file = 'bokeh_embedded.html'
with open(html_file, 'w') as textfile:
    textfile.write(template.render(tag=tag))
url = 'file:{}'.format(six.moves.urllib.request.pathname2url(os.path.abspath(html_file)))
webbrowser.open(url)

#output
#show(p)
