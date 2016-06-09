BEGIN TRANSACTION;
CREATE TABLE comparisons (
    comparison_id integer primary key autoincrement not null,
    v1 integer,
    v2 integer,
	winner integer,
	suuid text,
	foreign key(v1) references videos(video_id)
);
INSERT INTO "comparisons" VALUES(1,6,9,9,'6a21f997-a120-4c90-8bb2-d437aeac7b50');
INSERT INTO "comparisons" VALUES(2,2,10,10,'6a21f997-a120-4c90-8bb2-d437aeac7b50');
INSERT INTO "comparisons" VALUES(3,8,4,8,'6a21f997-a120-4c90-8bb2-d437aeac7b50');
INSERT INTO "comparisons" VALUES(4,1,3,3,'6a21f997-a120-4c90-8bb2-d437aeac7b50');
INSERT INTO "comparisons" VALUES(5,5,7,7,'6a21f997-a120-4c90-8bb2-d437aeac7b50');
INSERT INTO "comparisons" VALUES(6,1,8,8,'6a21f997-a120-4c90-8bb2-d437aeac7b50');
INSERT INTO "comparisons" VALUES(7,9,5,9,'6a21f997-a120-4c90-8bb2-d437aeac7b50');
INSERT INTO "comparisons" VALUES(8,10,2,10,'6a21f997-a120-4c90-8bb2-d437aeac7b50');
INSERT INTO "comparisons" VALUES(9,7,6,6,'6a21f997-a120-4c90-8bb2-d437aeac7b50');
INSERT INTO "comparisons" VALUES(10,4,3,3,'6a21f997-a120-4c90-8bb2-d437aeac7b50');
INSERT INTO "comparisons" VALUES(11,5,6,6,'6a21f997-a120-4c90-8bb2-d437aeac7b50');
INSERT INTO "comparisons" VALUES(12,9,1,9,'6a21f997-a120-4c90-8bb2-d437aeac7b50');
INSERT INTO "comparisons" VALUES(13,8,3,8,'6a21f997-a120-4c90-8bb2-d437aeac7b50');
INSERT INTO "comparisons" VALUES(14,10,2,10,'3916bff7-bcb9-4429-a028-64cf7f68c303');
INSERT INTO "comparisons" VALUES(15,7,4,7,'3916bff7-bcb9-4429-a028-64cf7f68c303');
INSERT INTO "comparisons" VALUES(16,1,4,4,'3916bff7-bcb9-4429-a028-64cf7f68c303');
INSERT INTO "comparisons" VALUES(17,9,3,9,'b2130d67-d293-4476-ab4a-001e9f02da2b');
INSERT INTO "comparisons" VALUES(18,7,5,7,'b2130d67-d293-4476-ab4a-001e9f02da2b');
INSERT INTO "comparisons" VALUES(19,8,10,8,'b2130d67-d293-4476-ab4a-001e9f02da2b');
INSERT INTO "comparisons" VALUES(20,2,6,6,'b2130d67-d293-4476-ab4a-001e9f02da2b');
INSERT INTO "comparisons" VALUES(21,8,7,7,'b2130d67-d293-4476-ab4a-001e9f02da2b');
CREATE TABLE sessions (
    session_id integer primary key autoincrement not null,
    suuid text,
	user_id integer,
    start_time text,
	foreign key(suuid) references comparisons(suuid)
);
INSERT INTO "sessions" VALUES(1,'6a21f997-a120-4c90-8bb2-d437aeac7b50',2,'2016-06-09 14:57:13.742268');
INSERT INTO "sessions" VALUES(2,'8ab52c55-0d4d-489a-a5ff-3e91c875b98f',2,'2016-06-09 15:00:16.493826');
INSERT INTO "sessions" VALUES(3,'e74c9cb1-027a-4926-bc85-a60a2bdc728a',2,'2016-06-09 15:01:08.918048');
INSERT INTO "sessions" VALUES(4,'3916bff7-bcb9-4429-a028-64cf7f68c303',2,'2016-06-09 15:08:01.564893');
INSERT INTO "sessions" VALUES(5,'b2130d67-d293-4476-ab4a-001e9f02da2b',1,'2016-06-09 15:10:08.161222');
DELETE FROM "sqlite_sequence";
INSERT INTO "sqlite_sequence" VALUES('videos',10);
INSERT INTO "sqlite_sequence" VALUES('users',2);
INSERT INTO "sqlite_sequence" VALUES('sessions',5);
INSERT INTO "sqlite_sequence" VALUES('comparisons',21);
CREATE TABLE users (
    user_id integer primary key autoincrement not null,
    username text,
    password text,
    license bool, 
	foreign key(user_id) references sessions(user_id)
);
INSERT INTO "users" VALUES(1,'admin','admin',1);
INSERT INTO "users" VALUES(2,'u1','123',1);
CREATE TABLE videos (
    video_id integer primary key autoincrement not null,
    filepath text not null,
	num_comparisons	integer
);
INSERT INTO "videos" VALUES(1,'/static/videos/d11d_V1391089173_980.ogv',4);
INSERT INTO "videos" VALUES(2,'/static/videos/d21d_V1391160865_992.ogv',4);
INSERT INTO "videos" VALUES(3,'/static/videos/d13d_V1391091201_995.ogv',4);
INSERT INTO "videos" VALUES(4,'/static/videos/d31d_V1391161819_012.ogv',4);
INSERT INTO "videos" VALUES(5,'/static/videos/d31dt_V1391090427_977.ogv',4);
INSERT INTO "videos" VALUES(6,'/static/videos/d12d_V1391090599_058.ogv',4);
INSERT INTO "videos" VALUES(7,'/static/videos/d21d_V1391160921_009.ogv',5);
INSERT INTO "videos" VALUES(8,'/static/videos/d32d_V1391089618_019.ogv',5);
INSERT INTO "videos" VALUES(9,'/static/videos/d31d_V1391091137_988.ogv',4);
INSERT INTO "videos" VALUES(10,'/static/videos/d32dt_V1391089773_981.ogv',4);
COMMIT;
