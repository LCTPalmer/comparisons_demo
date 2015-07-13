-- Schema for pairwise comparison application

create table videos (
    video_id integer primary key autoincrement not null,
    filepath text not null,
	num_comparisons	integer
);

create table comparisons (
    comparison_id integer primary key autoincrement not null,
    v1 integer,
    v2 integer,
	winner integer,
	suuid text,
	foreign key(v1) references videos(video_id)
);

create table sessions (
    session_id integer primary key autoincrement not null,
    suuid text,
	user_id integer,
    start_time text,
	foreign key(suuid) references comparisons(suuid)
);

create table users (
    user_id integer primary key autoincrement not null,
    username text,
    password text,
	foreign key(user_id) references sessions(user_id)
);
