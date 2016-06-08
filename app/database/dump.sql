BEGIN TRANSACTION;
CREATE TABLE comparisons (
    comparison_id integer primary key autoincrement not null,
    v1 integer,
    v2 integer,
	winner integer,
	suuid text,
	foreign key(v1) references videos(video_id)
);
INSERT INTO "comparisons" VALUES(1,75,5,75,'fbf5b3bd-cf37-4f57-bc18-93870b6546eb');
INSERT INTO "comparisons" VALUES(2,71,94,71,'fbf5b3bd-cf37-4f57-bc18-93870b6546eb');
INSERT INTO "comparisons" VALUES(3,16,46,46,'fbf5b3bd-cf37-4f57-bc18-93870b6546eb');
INSERT INTO "comparisons" VALUES(4,32,8,32,'e8911b74-19ba-4aa9-a216-cc75557d686c');
INSERT INTO "comparisons" VALUES(5,66,85,66,'e8911b74-19ba-4aa9-a216-cc75557d686c');
INSERT INTO "comparisons" VALUES(6,38,57,38,'a19334b1-2e8a-45ed-a64c-2f3401c70f16');
INSERT INTO "comparisons" VALUES(7,98,8,98,'a19334b1-2e8a-45ed-a64c-2f3401c70f16');
CREATE TABLE sessions (
    session_id integer primary key autoincrement not null,
    suuid text,
	user_id integer,
    start_time text,
	foreign key(suuid) references comparisons(suuid)
);
INSERT INTO "sessions" VALUES(1,'fbf5b3bd-cf37-4f57-bc18-93870b6546eb',2,'2016-06-08 15:38:49.495257');
INSERT INTO "sessions" VALUES(2,'e8911b74-19ba-4aa9-a216-cc75557d686c',3,'2016-06-08 15:40:21.796716');
INSERT INTO "sessions" VALUES(3,'a19334b1-2e8a-45ed-a64c-2f3401c70f16',3,'2016-06-08 15:41:08.739239');
DELETE FROM "sqlite_sequence";
INSERT INTO "sqlite_sequence" VALUES('videos',114);
INSERT INTO "sqlite_sequence" VALUES('users',3);
INSERT INTO "sqlite_sequence" VALUES('sessions',3);
INSERT INTO "sqlite_sequence" VALUES('comparisons',7);
CREATE TABLE users (
    user_id integer primary key autoincrement not null,
    username text,
    password text,
    license bool, 
	foreign key(user_id) references sessions(user_id)
);
INSERT INTO "users" VALUES(1,'admin','admin',1);
INSERT INTO "users" VALUES(2,'u1','123',0);
INSERT INTO "users" VALUES(3,'u2','123',1);
CREATE TABLE videos (
    video_id integer primary key autoincrement not null,
    filepath text not null,
	num_comparisons	integer
);
INSERT INTO "videos" VALUES(1,'/static/videos/d11d_V1391089173_980.ogv',0);
INSERT INTO "videos" VALUES(2,'/static/videos/d21d_V1391160865_992.ogv',0);
INSERT INTO "videos" VALUES(3,'/static/videos/d13d_V1391091201_995.ogv',0);
INSERT INTO "videos" VALUES(4,'/static/videos/d31d_V1391161819_012.ogv',0);
INSERT INTO "videos" VALUES(5,'/static/videos/d31dt_V1391090427_977.ogv',1);
INSERT INTO "videos" VALUES(6,'/static/videos/d12d_V1391090599_058.ogv',0);
INSERT INTO "videos" VALUES(7,'/static/videos/d21d_V1391160921_009.ogv',0);
INSERT INTO "videos" VALUES(8,'/static/videos/d32d_V1391089618_019.ogv',2);
INSERT INTO "videos" VALUES(9,'/static/videos/d31d_V1391091137_988.ogv',0);
INSERT INTO "videos" VALUES(10,'/static/videos/d32dt_V1391089773_981.ogv',0);
INSERT INTO "videos" VALUES(11,'/static/videos/d41d_V1391089271_986.ogv',0);
INSERT INTO "videos" VALUES(12,'/static/videos/d41d_V1391088812_997.ogv',0);
INSERT INTO "videos" VALUES(13,'/static/videos/d11d_V1391089869_985.ogv',0);
INSERT INTO "videos" VALUES(14,'/static/videos/d12d_V1391161454_031.ogv',0);
INSERT INTO "videos" VALUES(15,'/static/videos/d41d_V1391088287_019.ogv',0);
INSERT INTO "videos" VALUES(16,'/static/videos/d12d_V1391090716_992.ogv',1);
INSERT INTO "videos" VALUES(17,'/static/videos/d21d_V1391091403_996.ogv',0);
INSERT INTO "videos" VALUES(18,'/static/videos/d31dt_V1391088310_004.ogv',0);
INSERT INTO "videos" VALUES(19,'/static/videos/d41d_V1391089267_972.ogv',0);
INSERT INTO "videos" VALUES(20,'/static/videos/d21d_V1391089811_991.ogv',0);
INSERT INTO "videos" VALUES(21,'/static/videos/d11d_V1391089227_008.ogv',0);
INSERT INTO "videos" VALUES(22,'/static/videos/d31d_V1391089260_965.ogv',0);
INSERT INTO "videos" VALUES(23,'/static/videos/d12d_V1391090594_976.ogv',0);
INSERT INTO "videos" VALUES(24,'/static/videos/d31d_V1391091188_992.ogv',0);
INSERT INTO "videos" VALUES(25,'/static/videos/d31d_V1391089434_021.ogv',0);
INSERT INTO "videos" VALUES(26,'/static/videos/d12d_V1391090695_974.ogv',0);
INSERT INTO "videos" VALUES(27,'/static/videos/d33d_V1391088805_018.ogv',0);
INSERT INTO "videos" VALUES(28,'/static/videos/d21d_V1391089161_003.ogv',0);
INSERT INTO "videos" VALUES(29,'/static/videos/d21dt_V1391089896_024.ogv',0);
INSERT INTO "videos" VALUES(30,'/static/videos/d32d_V1391088291_994.ogv',0);
INSERT INTO "videos" VALUES(31,'/static/videos/d23d_V1391090477_976.ogv',0);
INSERT INTO "videos" VALUES(32,'/static/videos/d31dt_V1391088313_974.ogv',1);
INSERT INTO "videos" VALUES(33,'/static/videos/d11dt_V1391160777_011.ogv',0);
INSERT INTO "videos" VALUES(34,'/static/videos/d11d_V1391160908_014.ogv',0);
INSERT INTO "videos" VALUES(35,'/static/videos/d23d_V1391090482_027.ogv',0);
INSERT INTO "videos" VALUES(36,'/static/videos/d31d_V1391090412_987.ogv',0);
INSERT INTO "videos" VALUES(37,'/static/videos/d21d_V1391089372_968.ogv',0);
INSERT INTO "videos" VALUES(38,'/static/videos/d13d_V1391091357_997.ogv',1);
INSERT INTO "videos" VALUES(39,'/static/videos/d11d_V1391090953_968.ogv',0);
INSERT INTO "videos" VALUES(40,'/static/videos/d32dt_V1391089778_007.ogv',0);
INSERT INTO "videos" VALUES(41,'/static/videos/d11d_V1391088279_038.ogv',0);
INSERT INTO "videos" VALUES(42,'/static/videos/d21d_V1391161251_002.ogv',0);
INSERT INTO "videos" VALUES(43,'/static/videos/d11dt_V1391160773_012.ogv',0);
INSERT INTO "videos" VALUES(44,'/static/videos/d21d_V1391089417_986.ogv',0);
INSERT INTO "videos" VALUES(45,'/static/videos/d21d_V1391089142_021.ogv',0);
INSERT INTO "videos" VALUES(46,'/static/videos/d31d_V1391091038_973.ogv',1);
INSERT INTO "videos" VALUES(47,'/static/videos/d21dt_V1391161847_006.ogv',0);
INSERT INTO "videos" VALUES(48,'/static/videos/d31d_V1391091145_961.ogv',0);
INSERT INTO "videos" VALUES(49,'/static/videos/d31d_V1391091141_992.ogv',0);
INSERT INTO "videos" VALUES(50,'/static/videos/d21d_V1391160727_024.ogv',0);
INSERT INTO "videos" VALUES(51,'/static/videos/d11d_V1391160670_995.ogv',0);
INSERT INTO "videos" VALUES(52,'/static/videos/d11d_V1391160674_995.ogv',0);
INSERT INTO "videos" VALUES(53,'/static/videos/d32dt_V1391088863_988.ogv',0);
INSERT INTO "videos" VALUES(54,'/static/videos/d31d_V1391091129_993.ogv',0);
INSERT INTO "videos" VALUES(55,'/static/videos/d11dt_V1391160781_008.ogv',0);
INSERT INTO "videos" VALUES(56,'/static/videos/d21d_V1391089399_040.ogv',0);
INSERT INTO "videos" VALUES(57,'/static/videos/d21d_V1391088961_985.ogv',1);
INSERT INTO "videos" VALUES(58,'/static/videos/d32d_V1391090945_992.ogv',0);
INSERT INTO "videos" VALUES(59,'/static/videos/d21d_V1391088334_966.ogv',0);
INSERT INTO "videos" VALUES(60,'/static/videos/d12d_V1391090657_984.ogv',0);
INSERT INTO "videos" VALUES(61,'/static/videos/d31d_V1391091286_997.ogv',0);
INSERT INTO "videos" VALUES(62,'/static/videos/d41dt_V1391160762_012.ogv',0);
INSERT INTO "videos" VALUES(63,'/static/videos/d11d_V1391089190_961.ogv',0);
INSERT INTO "videos" VALUES(64,'/static/videos/d21d_V1391088338_989.ogv',0);
INSERT INTO "videos" VALUES(65,'/static/videos/d12d_V1391089081_990.ogv',0);
INSERT INTO "videos" VALUES(66,'/static/videos/d32d_V1391091483_017.ogv',1);
INSERT INTO "videos" VALUES(67,'/static/videos/d13d_V1391090558_985.ogv',0);
INSERT INTO "videos" VALUES(68,'/static/videos/d21d_V1391088295_974.ogv',0);
INSERT INTO "videos" VALUES(69,'/static/videos/d21d_V1391088825_975.ogv',0);
INSERT INTO "videos" VALUES(70,'/static/videos/d13d_V1391090669_975.ogv',0);
INSERT INTO "videos" VALUES(71,'/static/videos/d31d_V1391091133_995.ogv',1);
INSERT INTO "videos" VALUES(72,'/static/videos/d21d_V1391160916_991.ogv',0);
INSERT INTO "videos" VALUES(73,'/static/videos/d11d_V1391089511_992.ogv',0);
INSERT INTO "videos" VALUES(74,'/static/videos/d41dt_V1391160750_015.ogv',0);
INSERT INTO "videos" VALUES(75,'/static/videos/d11d_V1391089230_989.ogv',1);
INSERT INTO "videos" VALUES(76,'/static/videos/d23d_V1391090711_994.ogv',0);
INSERT INTO "videos" VALUES(77,'/static/videos/d14d_V1391090706_989.ogv',0);
INSERT INTO "videos" VALUES(78,'/static/videos/d11d_V1391088320_977.ogv',0);
INSERT INTO "videos" VALUES(79,'/static/videos/d21dt_V1391161050_012.ogv',0);
INSERT INTO "videos" VALUES(80,'/static/videos/d12d_V1391161450_030.ogv',0);
INSERT INTO "videos" VALUES(81,'/static/videos/d11d_V1391090986_976.ogv',0);
INSERT INTO "videos" VALUES(82,'/static/videos/d22d_V1391091193_976.ogv',0);
INSERT INTO "videos" VALUES(83,'/static/videos/d31dt_V1391161162_022.ogv',0);
INSERT INTO "videos" VALUES(84,'/static/videos/d22d_V1391161232_006.ogv',0);
INSERT INTO "videos" VALUES(85,'/static/videos/d11d_V1391090407_033.ogv',1);
INSERT INTO "videos" VALUES(86,'/static/videos/d32dt_V1391088867_977.ogv',0);
INSERT INTO "videos" VALUES(87,'/static/videos/d22d_V1391090419_976.ogv',0);
INSERT INTO "videos" VALUES(88,'/static/videos/d21d_V1391089145_983.ogv',0);
INSERT INTO "videos" VALUES(89,'/static/videos/d21d_V1391161578_999.ogv',0);
INSERT INTO "videos" VALUES(90,'/static/videos/d22d_V1391090751_009.ogv',0);
INSERT INTO "videos" VALUES(91,'/static/videos/d22dt_V1391089501_998.ogv',0);
INSERT INTO "videos" VALUES(92,'/static/videos/d21d_V1391161596_027.ogv',0);
INSERT INTO "videos" VALUES(93,'/static/videos/d31d_V1391088808_993.ogv',0);
INSERT INTO "videos" VALUES(94,'/static/videos/d11dt_V1391089806_059.ogv',1);
INSERT INTO "videos" VALUES(95,'/static/videos/d31dt_V1391090924_983.ogv',0);
INSERT INTO "videos" VALUES(96,'/static/videos/d41dt_V1391160754_011.ogv',0);
INSERT INTO "videos" VALUES(97,'/static/videos/d21d_V1391089297_961.ogv',0);
INSERT INTO "videos" VALUES(98,'/static/videos/d22d_V1391090919_980.ogv',1);
INSERT INTO "videos" VALUES(99,'/static/videos/d22d_V1391161228_012.ogv',0);
INSERT INTO "videos" VALUES(100,'/static/videos/d12d_V1391090747_035.ogv',0);
INSERT INTO "videos" VALUES(101,'/static/videos/d21d_V1391089090_964.ogv',0);
INSERT INTO "videos" VALUES(102,'/static/videos/d13dt_V1391090446_978.ogv',0);
INSERT INTO "videos" VALUES(103,'/static/videos/d21d_V1391089301_997.ogv',0);
INSERT INTO "videos" VALUES(104,'/static/videos/d21d_V1391088327_052.ogv',0);
INSERT INTO "videos" VALUES(105,'/static/videos/d41dt_V1391160758_010.ogv',0);
INSERT INTO "videos" VALUES(106,'/static/videos/d13d_V1391091541_997.ogv',0);
INSERT INTO "videos" VALUES(107,'/static/videos/d21d_V1391161247_003.ogv',0);
INSERT INTO "videos" VALUES(108,'/static/videos/d21d_V1391161583_000.ogv',0);
INSERT INTO "videos" VALUES(109,'/static/videos/d31dt_V1391090432_001.ogv',0);
INSERT INTO "videos" VALUES(110,'/static/videos/d32d_V1391161257_001.ogv',0);
INSERT INTO "videos" VALUES(111,'/static/videos/d21d_V1391090452_037.ogv',0);
INSERT INTO "videos" VALUES(112,'/static/videos/d21d_V1391090647_976.ogv',0);
INSERT INTO "videos" VALUES(113,'/static/videos/d21d_V1391088330_996.ogv',0);
INSERT INTO "videos" VALUES(114,'/static/videos/d12_V1391090608_015.ogv',0);
COMMIT;
