BEGIN TRANSACTION;
CREATE TABLE comparisons (
    comparison_id integer primary key autoincrement not null,
    v1 integer,
    v2 integer,
	winner integer,
	suuid text,
	foreign key(v1) references videos(video_id)
);
INSERT INTO "comparisons" VALUES(1,98,7,98,'5e69b516-c4b4-44d7-a687-3f661c8dd811');
INSERT INTO "comparisons" VALUES(2,13,72,72,'5e69b516-c4b4-44d7-a687-3f661c8dd811');
INSERT INTO "comparisons" VALUES(3,77,49,77,'5e69b516-c4b4-44d7-a687-3f661c8dd811');
INSERT INTO "comparisons" VALUES(4,14,93,93,'5e69b516-c4b4-44d7-a687-3f661c8dd811');
INSERT INTO "comparisons" VALUES(5,17,71,17,'5e69b516-c4b4-44d7-a687-3f661c8dd811');
INSERT INTO "comparisons" VALUES(6,34,103,103,'5e69b516-c4b4-44d7-a687-3f661c8dd811');
INSERT INTO "comparisons" VALUES(7,89,85,89,'5e69b516-c4b4-44d7-a687-3f661c8dd811');
INSERT INTO "comparisons" VALUES(8,66,33,66,'5e69b516-c4b4-44d7-a687-3f661c8dd811');
INSERT INTO "comparisons" VALUES(9,24,53,53,'5e69b516-c4b4-44d7-a687-3f661c8dd811');
INSERT INTO "comparisons" VALUES(10,110,67,67,'5e69b516-c4b4-44d7-a687-3f661c8dd811');
INSERT INTO "comparisons" VALUES(11,60,10,60,'5e69b516-c4b4-44d7-a687-3f661c8dd811');
INSERT INTO "comparisons" VALUES(12,78,15,15,'5e69b516-c4b4-44d7-a687-3f661c8dd811');
INSERT INTO "comparisons" VALUES(13,75,48,48,'5e69b516-c4b4-44d7-a687-3f661c8dd811');
INSERT INTO "comparisons" VALUES(14,23,20,20,'5e69b516-c4b4-44d7-a687-3f661c8dd811');
INSERT INTO "comparisons" VALUES(15,106,3,106,'5e69b516-c4b4-44d7-a687-3f661c8dd811');
INSERT INTO "comparisons" VALUES(16,44,104,44,'5e69b516-c4b4-44d7-a687-3f661c8dd811');
INSERT INTO "comparisons" VALUES(17,30,36,36,'5e69b516-c4b4-44d7-a687-3f661c8dd811');
INSERT INTO "comparisons" VALUES(18,58,4,58,'5e69b516-c4b4-44d7-a687-3f661c8dd811');
INSERT INTO "comparisons" VALUES(19,6,70,70,'5e69b516-c4b4-44d7-a687-3f661c8dd811');
INSERT INTO "comparisons" VALUES(20,102,113,102,'5e69b516-c4b4-44d7-a687-3f661c8dd811');
INSERT INTO "comparisons" VALUES(21,63,79,79,'5e69b516-c4b4-44d7-a687-3f661c8dd811');
INSERT INTO "comparisons" VALUES(22,1,45,45,'5e69b516-c4b4-44d7-a687-3f661c8dd811');
INSERT INTO "comparisons" VALUES(23,28,69,69,'5e69b516-c4b4-44d7-a687-3f661c8dd811');
INSERT INTO "comparisons" VALUES(24,54,111,54,'5e69b516-c4b4-44d7-a687-3f661c8dd811');
INSERT INTO "comparisons" VALUES(25,18,27,27,'5e69b516-c4b4-44d7-a687-3f661c8dd811');
INSERT INTO "comparisons" VALUES(26,99,51,99,'5e69b516-c4b4-44d7-a687-3f661c8dd811');
INSERT INTO "comparisons" VALUES(27,25,90,25,'5e69b516-c4b4-44d7-a687-3f661c8dd811');
INSERT INTO "comparisons" VALUES(28,50,61,61,'5e69b516-c4b4-44d7-a687-3f661c8dd811');
INSERT INTO "comparisons" VALUES(29,55,26,26,'5e69b516-c4b4-44d7-a687-3f661c8dd811');
INSERT INTO "comparisons" VALUES(30,97,2,97,'5e69b516-c4b4-44d7-a687-3f661c8dd811');
INSERT INTO "comparisons" VALUES(31,39,8,8,'5e69b516-c4b4-44d7-a687-3f661c8dd811');
INSERT INTO "comparisons" VALUES(32,95,87,95,'5e69b516-c4b4-44d7-a687-3f661c8dd811');
INSERT INTO "comparisons" VALUES(33,52,40,40,'5e69b516-c4b4-44d7-a687-3f661c8dd811');
INSERT INTO "comparisons" VALUES(34,59,68,68,'5e69b516-c4b4-44d7-a687-3f661c8dd811');
INSERT INTO "comparisons" VALUES(35,81,57,57,'5e69b516-c4b4-44d7-a687-3f661c8dd811');
INSERT INTO "comparisons" VALUES(36,114,21,21,'5e69b516-c4b4-44d7-a687-3f661c8dd811');
INSERT INTO "comparisons" VALUES(37,32,92,92,'5e69b516-c4b4-44d7-a687-3f661c8dd811');
INSERT INTO "comparisons" VALUES(38,62,65,65,'5e69b516-c4b4-44d7-a687-3f661c8dd811');
INSERT INTO "comparisons" VALUES(39,100,94,94,'5e69b516-c4b4-44d7-a687-3f661c8dd811');
INSERT INTO "comparisons" VALUES(40,96,101,96,'5e69b516-c4b4-44d7-a687-3f661c8dd811');
INSERT INTO "comparisons" VALUES(41,105,64,105,'5e69b516-c4b4-44d7-a687-3f661c8dd811');
INSERT INTO "comparisons" VALUES(42,35,43,35,'5e69b516-c4b4-44d7-a687-3f661c8dd811');
INSERT INTO "comparisons" VALUES(43,42,41,42,'5e69b516-c4b4-44d7-a687-3f661c8dd811');
INSERT INTO "comparisons" VALUES(44,9,88,9,'5e69b516-c4b4-44d7-a687-3f661c8dd811');
INSERT INTO "comparisons" VALUES(45,86,109,86,'5e69b516-c4b4-44d7-a687-3f661c8dd811');
INSERT INTO "comparisons" VALUES(46,74,56,74,'5e69b516-c4b4-44d7-a687-3f661c8dd811');
INSERT INTO "comparisons" VALUES(47,47,73,47,'5e69b516-c4b4-44d7-a687-3f661c8dd811');
INSERT INTO "comparisons" VALUES(48,29,5,29,'5e69b516-c4b4-44d7-a687-3f661c8dd811');
INSERT INTO "comparisons" VALUES(49,12,82,12,'5e69b516-c4b4-44d7-a687-3f661c8dd811');
INSERT INTO "comparisons" VALUES(50,76,108,76,'5e69b516-c4b4-44d7-a687-3f661c8dd811');
INSERT INTO "comparisons" VALUES(51,16,22,22,'5e69b516-c4b4-44d7-a687-3f661c8dd811');
INSERT INTO "comparisons" VALUES(52,31,37,31,'5e69b516-c4b4-44d7-a687-3f661c8dd811');
INSERT INTO "comparisons" VALUES(53,38,80,38,'5e69b516-c4b4-44d7-a687-3f661c8dd811');
INSERT INTO "comparisons" VALUES(54,83,11,11,'9603a322-4571-4193-aa0b-e96f9c49702a');
INSERT INTO "comparisons" VALUES(55,84,107,107,'9603a322-4571-4193-aa0b-e96f9c49702a');
INSERT INTO "comparisons" VALUES(56,46,19,46,'9603a322-4571-4193-aa0b-e96f9c49702a');
INSERT INTO "comparisons" VALUES(57,91,112,112,'9603a322-4571-4193-aa0b-e96f9c49702a');
INSERT INTO "comparisons" VALUES(58,102,22,22,'9603a322-4571-4193-aa0b-e96f9c49702a');
INSERT INTO "comparisons" VALUES(59,98,73,98,'9603a322-4571-4193-aa0b-e96f9c49702a');
INSERT INTO "comparisons" VALUES(60,111,64,111,'9603a322-4571-4193-aa0b-e96f9c49702a');
INSERT INTO "comparisons" VALUES(61,20,14,20,'9603a322-4571-4193-aa0b-e96f9c49702a');
INSERT INTO "comparisons" VALUES(62,63,108,63,'9603a322-4571-4193-aa0b-e96f9c49702a');
INSERT INTO "comparisons" VALUES(63,29,37,37,'9603a322-4571-4193-aa0b-e96f9c49702a');
INSERT INTO "comparisons" VALUES(64,85,61,61,'9603a322-4571-4193-aa0b-e96f9c49702a');
INSERT INTO "comparisons" VALUES(65,107,34,107,'9603a322-4571-4193-aa0b-e96f9c49702a');
INSERT INTO "comparisons" VALUES(66,50,90,50,'9603a322-4571-4193-aa0b-e96f9c49702a');
INSERT INTO "comparisons" VALUES(67,60,65,65,'9603a322-4571-4193-aa0b-e96f9c49702a');
INSERT INTO "comparisons" VALUES(68,41,48,48,'9603a322-4571-4193-aa0b-e96f9c49702a');
INSERT INTO "comparisons" VALUES(69,52,69,69,'9603a322-4571-4193-aa0b-e96f9c49702a');
INSERT INTO "comparisons" VALUES(70,44,88,44,'9603a322-4571-4193-aa0b-e96f9c49702a');
INSERT INTO "comparisons" VALUES(71,13,1,1,'9603a322-4571-4193-aa0b-e96f9c49702a');
INSERT INTO "comparisons" VALUES(72,59,103,103,'9603a322-4571-4193-aa0b-e96f9c49702a');
INSERT INTO "comparisons" VALUES(73,18,74,74,'9603a322-4571-4193-aa0b-e96f9c49702a');
INSERT INTO "comparisons" VALUES(74,71,42,42,'9603a322-4571-4193-aa0b-e96f9c49702a');
INSERT INTO "comparisons" VALUES(75,9,79,79,'9dc0273a-0f51-4787-9ff3-38b2b3d9c21f');
INSERT INTO "comparisons" VALUES(76,35,101,101,'9dc0273a-0f51-4787-9ff3-38b2b3d9c21f');
INSERT INTO "comparisons" VALUES(77,24,94,24,'9dc0273a-0f51-4787-9ff3-38b2b3d9c21f');
INSERT INTO "comparisons" VALUES(78,11,72,11,'9dc0273a-0f51-4787-9ff3-38b2b3d9c21f');
INSERT INTO "comparisons" VALUES(79,15,66,66,'9dc0273a-0f51-4787-9ff3-38b2b3d9c21f');
INSERT INTO "comparisons" VALUES(80,15,66,66,'9dc0273a-0f51-4787-9ff3-38b2b3d9c21f');
INSERT INTO "comparisons" VALUES(81,54,86,86,'9dc0273a-0f51-4787-9ff3-38b2b3d9c21f');
INSERT INTO "comparisons" VALUES(82,43,16,16,'9dc0273a-0f51-4787-9ff3-38b2b3d9c21f');
INSERT INTO "comparisons" VALUES(83,112,70,70,'9dc0273a-0f51-4787-9ff3-38b2b3d9c21f');
INSERT INTO "comparisons" VALUES(84,81,51,81,'9dc0273a-0f51-4787-9ff3-38b2b3d9c21f');
INSERT INTO "comparisons" VALUES(85,7,46,46,'9dc0273a-0f51-4787-9ff3-38b2b3d9c21f');
INSERT INTO "comparisons" VALUES(86,84,114,84,'9dc0273a-0f51-4787-9ff3-38b2b3d9c21f');
INSERT INTO "comparisons" VALUES(87,25,91,91,'9dc0273a-0f51-4787-9ff3-38b2b3d9c21f');
INSERT INTO "comparisons" VALUES(88,109,87,87,'a89f8e10-9a0c-4a1f-8645-86548c2dea7c');
INSERT INTO "comparisons" VALUES(89,58,76,58,'a89f8e10-9a0c-4a1f-8645-86548c2dea7c');
INSERT INTO "comparisons" VALUES(90,5,28,5,'d1a3f764-7eaf-402e-be6c-882d6dd159ed');
INSERT INTO "comparisons" VALUES(91,6,105,105,'d1a3f764-7eaf-402e-be6c-882d6dd159ed');
INSERT INTO "comparisons" VALUES(92,92,75,92,'d1a3f764-7eaf-402e-be6c-882d6dd159ed');
INSERT INTO "comparisons" VALUES(93,67,62,67,'d1a3f764-7eaf-402e-be6c-882d6dd159ed');
INSERT INTO "comparisons" VALUES(94,97,56,56,'d1a3f764-7eaf-402e-be6c-882d6dd159ed');
INSERT INTO "comparisons" VALUES(95,32,45,32,'d1a3f764-7eaf-402e-be6c-882d6dd159ed');
INSERT INTO "comparisons" VALUES(96,100,4,100,'d1a3f764-7eaf-402e-be6c-882d6dd159ed');
INSERT INTO "comparisons" VALUES(97,33,17,17,'d1a3f764-7eaf-402e-be6c-882d6dd159ed');
INSERT INTO "comparisons" VALUES(98,55,36,36,'d1a3f764-7eaf-402e-be6c-882d6dd159ed');
INSERT INTO "comparisons" VALUES(99,47,19,19,'d1a3f764-7eaf-402e-be6c-882d6dd159ed');
INSERT INTO "comparisons" VALUES(100,23,77,77,'d1a3f764-7eaf-402e-be6c-882d6dd159ed');
INSERT INTO "comparisons" VALUES(101,104,10,10,'d1a3f764-7eaf-402e-be6c-882d6dd159ed');
INSERT INTO "comparisons" VALUES(102,110,68,68,'d1a3f764-7eaf-402e-be6c-882d6dd159ed');
INSERT INTO "comparisons" VALUES(103,38,26,26,'d1a3f764-7eaf-402e-be6c-882d6dd159ed');
INSERT INTO "comparisons" VALUES(104,30,12,12,'d1a3f764-7eaf-402e-be6c-882d6dd159ed');
INSERT INTO "comparisons" VALUES(105,27,83,83,'d1a3f764-7eaf-402e-be6c-882d6dd159ed');
INSERT INTO "comparisons" VALUES(106,80,21,80,'d1a3f764-7eaf-402e-be6c-882d6dd159ed');
INSERT INTO "comparisons" VALUES(107,89,113,113,'d1a3f764-7eaf-402e-be6c-882d6dd159ed');
INSERT INTO "comparisons" VALUES(108,49,99,49,'d1a3f764-7eaf-402e-be6c-882d6dd159ed');
INSERT INTO "comparisons" VALUES(109,3,93,93,'d1a3f764-7eaf-402e-be6c-882d6dd159ed');
INSERT INTO "comparisons" VALUES(110,8,39,8,'d1a3f764-7eaf-402e-be6c-882d6dd159ed');
INSERT INTO "comparisons" VALUES(111,31,57,31,'d1a3f764-7eaf-402e-be6c-882d6dd159ed');
INSERT INTO "comparisons" VALUES(112,95,78,95,'d1a3f764-7eaf-402e-be6c-882d6dd159ed');
INSERT INTO "comparisons" VALUES(113,53,82,53,'d1a3f764-7eaf-402e-be6c-882d6dd159ed');
INSERT INTO "comparisons" VALUES(114,40,106,106,'d1a3f764-7eaf-402e-be6c-882d6dd159ed');
INSERT INTO "comparisons" VALUES(115,2,96,96,'d1a3f764-7eaf-402e-be6c-882d6dd159ed');
INSERT INTO "comparisons" VALUES(116,55,94,94,'d1a3f764-7eaf-402e-be6c-882d6dd159ed');
INSERT INTO "comparisons" VALUES(117,13,97,97,'d1a3f764-7eaf-402e-be6c-882d6dd159ed');
INSERT INTO "comparisons" VALUES(118,43,6,6,'d1a3f764-7eaf-402e-be6c-882d6dd159ed');
INSERT INTO "comparisons" VALUES(119,17,36,36,'d1a3f764-7eaf-402e-be6c-882d6dd159ed');
INSERT INTO "comparisons" VALUES(120,1,18,18,'d1a3f764-7eaf-402e-be6c-882d6dd159ed');
INSERT INTO "comparisons" VALUES(121,67,7,67,'d1a3f764-7eaf-402e-be6c-882d6dd159ed');
INSERT INTO "comparisons" VALUES(122,73,39,73,'d1a3f764-7eaf-402e-be6c-882d6dd159ed');
INSERT INTO "comparisons" VALUES(123,86,11,11,'d1a3f764-7eaf-402e-be6c-882d6dd159ed');
INSERT INTO "comparisons" VALUES(124,58,60,60,'d1a3f764-7eaf-402e-be6c-882d6dd159ed');
INSERT INTO "comparisons" VALUES(125,42,77,77,'d1a3f764-7eaf-402e-be6c-882d6dd159ed');
INSERT INTO "comparisons" VALUES(126,35,25,25,'d1a3f764-7eaf-402e-be6c-882d6dd159ed');
INSERT INTO "comparisons" VALUES(127,113,57,113,'d1a3f764-7eaf-402e-be6c-882d6dd159ed');
INSERT INTO "comparisons" VALUES(128,56,112,56,'d1a3f764-7eaf-402e-be6c-882d6dd159ed');
INSERT INTO "comparisons" VALUES(129,92,32,92,'d1a3f764-7eaf-402e-be6c-882d6dd159ed');
INSERT INTO "comparisons" VALUES(130,102,45,45,'d1a3f764-7eaf-402e-be6c-882d6dd159ed');
INSERT INTO "comparisons" VALUES(131,10,50,10,'d1a3f764-7eaf-402e-be6c-882d6dd159ed');
INSERT INTO "comparisons" VALUES(132,98,110,110,'d1a3f764-7eaf-402e-be6c-882d6dd159ed');
INSERT INTO "comparisons" VALUES(133,31,53,31,'d1a3f764-7eaf-402e-be6c-882d6dd159ed');
INSERT INTO "comparisons" VALUES(134,40,5,5,'d1a3f764-7eaf-402e-be6c-882d6dd159ed');
INSERT INTO "comparisons" VALUES(135,8,2,8,'c62962b7-1c48-42f7-a4d6-c183c7aaf7cd');
INSERT INTO "comparisons" VALUES(136,111,72,111,'c62962b7-1c48-42f7-a4d6-c183c7aaf7cd');
INSERT INTO "comparisons" VALUES(137,3,22,22,'c62962b7-1c48-42f7-a4d6-c183c7aaf7cd');
INSERT INTO "comparisons" VALUES(138,41,101,101,'c62962b7-1c48-42f7-a4d6-c183c7aaf7cd');
INSERT INTO "comparisons" VALUES(139,69,108,69,'c62962b7-1c48-42f7-a4d6-c183c7aaf7cd');
INSERT INTO "comparisons" VALUES(140,27,104,27,'c62962b7-1c48-42f7-a4d6-c183c7aaf7cd');
INSERT INTO "comparisons" VALUES(141,75,65,65,'c62962b7-1c48-42f7-a4d6-c183c7aaf7cd');
INSERT INTO "comparisons" VALUES(142,103,33,103,'c62962b7-1c48-42f7-a4d6-c183c7aaf7cd');
INSERT INTO "comparisons" VALUES(143,24,28,24,'c62962b7-1c48-42f7-a4d6-c183c7aaf7cd');
INSERT INTO "comparisons" VALUES(144,16,87,87,'c62962b7-1c48-42f7-a4d6-c183c7aaf7cd');
INSERT INTO "comparisons" VALUES(145,91,96,91,'c62962b7-1c48-42f7-a4d6-c183c7aaf7cd');
INSERT INTO "comparisons" VALUES(146,48,68,48,'c62962b7-1c48-42f7-a4d6-c183c7aaf7cd');
INSERT INTO "comparisons" VALUES(147,114,37,37,'c62962b7-1c48-42f7-a4d6-c183c7aaf7cd');
INSERT INTO "comparisons" VALUES(148,52,78,52,'c62962b7-1c48-42f7-a4d6-c183c7aaf7cd');
INSERT INTO "comparisons" VALUES(149,14,49,49,'c62962b7-1c48-42f7-a4d6-c183c7aaf7cd');
INSERT INTO "comparisons" VALUES(150,90,47,90,'c62962b7-1c48-42f7-a4d6-c183c7aaf7cd');
INSERT INTO "comparisons" VALUES(151,109,38,38,'c62962b7-1c48-42f7-a4d6-c183c7aaf7cd');
INSERT INTO "comparisons" VALUES(152,9,51,9,'c62962b7-1c48-42f7-a4d6-c183c7aaf7cd');
INSERT INTO "comparisons" VALUES(153,62,105,105,'c62962b7-1c48-42f7-a4d6-c183c7aaf7cd');
INSERT INTO "comparisons" VALUES(154,63,106,106,'c62962b7-1c48-42f7-a4d6-c183c7aaf7cd');
INSERT INTO "comparisons" VALUES(155,4,95,95,'c62962b7-1c48-42f7-a4d6-c183c7aaf7cd');
INSERT INTO "comparisons" VALUES(156,82,107,82,'c62962b7-1c48-42f7-a4d6-c183c7aaf7cd');
INSERT INTO "comparisons" VALUES(157,76,21,76,'c62962b7-1c48-42f7-a4d6-c183c7aaf7cd');
INSERT INTO "comparisons" VALUES(158,80,70,70,'c62962b7-1c48-42f7-a4d6-c183c7aaf7cd');
INSERT INTO "comparisons" VALUES(159,61,19,19,'c62962b7-1c48-42f7-a4d6-c183c7aaf7cd');
INSERT INTO "comparisons" VALUES(160,64,44,44,'8cd82776-fadf-41e2-a875-26ac927edad0');
INSERT INTO "comparisons" VALUES(161,85,88,85,'8cd82776-fadf-41e2-a875-26ac927edad0');
INSERT INTO "comparisons" VALUES(162,84,59,84,'8cd82776-fadf-41e2-a875-26ac927edad0');
INSERT INTO "comparisons" VALUES(163,34,26,26,'8cd82776-fadf-41e2-a875-26ac927edad0');
INSERT INTO "comparisons" VALUES(164,83,46,46,'8cd82776-fadf-41e2-a875-26ac927edad0');
INSERT INTO "comparisons" VALUES(165,20,29,29,'8cd82776-fadf-41e2-a875-26ac927edad0');
INSERT INTO "comparisons" VALUES(166,74,54,74,'8cd82776-fadf-41e2-a875-26ac927edad0');
INSERT INTO "comparisons" VALUES(167,71,23,23,'8cd82776-fadf-41e2-a875-26ac927edad0');
INSERT INTO "comparisons" VALUES(168,30,99,30,'8cd82776-fadf-41e2-a875-26ac927edad0');
INSERT INTO "comparisons" VALUES(169,89,100,89,'8cd82776-fadf-41e2-a875-26ac927edad0');
INSERT INTO "comparisons" VALUES(170,12,79,12,'8cd82776-fadf-41e2-a875-26ac927edad0');
INSERT INTO "comparisons" VALUES(171,81,93,93,'8cd82776-fadf-41e2-a875-26ac927edad0');
INSERT INTO "comparisons" VALUES(172,52,85,52,'8cd82776-fadf-41e2-a875-26ac927edad0');
INSERT INTO "comparisons" VALUES(173,82,113,113,'d7cb443a-7627-4097-ac10-28049e85099d');
INSERT INTO "comparisons" VALUES(174,37,114,37,'d7cb443a-7627-4097-ac10-28049e85099d');
INSERT INTO "comparisons" VALUES(175,13,97,97,'d7cb443a-7627-4097-ac10-28049e85099d');
INSERT INTO "comparisons" VALUES(176,68,90,90,'d7cb443a-7627-4097-ac10-28049e85099d');
INSERT INTO "comparisons" VALUES(177,39,29,29,'d7cb443a-7627-4097-ac10-28049e85099d');
INSERT INTO "comparisons" VALUES(178,107,8,107,'d7cb443a-7627-4097-ac10-28049e85099d');
INSERT INTO "comparisons" VALUES(179,98,38,38,'d7cb443a-7627-4097-ac10-28049e85099d');
INSERT INTO "comparisons" VALUES(180,56,70,56,'d7cb443a-7627-4097-ac10-28049e85099d');
INSERT INTO "comparisons" VALUES(181,46,57,46,'d7cb443a-7627-4097-ac10-28049e85099d');
INSERT INTO "comparisons" VALUES(182,69,66,66,'d7cb443a-7627-4097-ac10-28049e85099d');
INSERT INTO "comparisons" VALUES(183,3,92,3,'d7cb443a-7627-4097-ac10-28049e85099d');
INSERT INTO "comparisons" VALUES(184,94,72,94,'d7cb443a-7627-4097-ac10-28049e85099d');
INSERT INTO "comparisons" VALUES(185,101,77,77,'1a225788-4492-4d0f-84e2-2c0a4be33971');
INSERT INTO "comparisons" VALUES(186,40,67,67,'1a225788-4492-4d0f-84e2-2c0a4be33971');
INSERT INTO "comparisons" VALUES(187,88,78,88,'1a225788-4492-4d0f-84e2-2c0a4be33971');
INSERT INTO "comparisons" VALUES(188,45,30,30,'1a225788-4492-4d0f-84e2-2c0a4be33971');
INSERT INTO "comparisons" VALUES(189,11,62,11,'1a225788-4492-4d0f-84e2-2c0a4be33971');
INSERT INTO "comparisons" VALUES(190,22,25,25,'1a225788-4492-4d0f-84e2-2c0a4be33971');
INSERT INTO "comparisons" VALUES(191,95,76,95,'fa47e225-9c69-47de-a61b-e045a1c16fcc');
INSERT INTO "comparisons" VALUES(192,14,19,14,'fa47e225-9c69-47de-a61b-e045a1c16fcc');
INSERT INTO "comparisons" VALUES(193,81,9,9,'fa47e225-9c69-47de-a61b-e045a1c16fcc');
INSERT INTO "comparisons" VALUES(194,84,73,84,'fa47e225-9c69-47de-a61b-e045a1c16fcc');
INSERT INTO "comparisons" VALUES(195,111,5,111,'fa47e225-9c69-47de-a61b-e045a1c16fcc');
INSERT INTO "comparisons" VALUES(196,42,24,24,'fa47e225-9c69-47de-a61b-e045a1c16fcc');
INSERT INTO "comparisons" VALUES(197,89,47,89,'fa47e225-9c69-47de-a61b-e045a1c16fcc');
INSERT INTO "comparisons" VALUES(198,10,27,27,'c99edcda-0a98-459a-b3e1-0621bb11d498');
INSERT INTO "comparisons" VALUES(199,36,20,36,'c99edcda-0a98-459a-b3e1-0621bb11d498');
INSERT INTO "comparisons" VALUES(200,2,61,61,'c99edcda-0a98-459a-b3e1-0621bb11d498');
INSERT INTO "comparisons" VALUES(201,48,7,48,'c99edcda-0a98-459a-b3e1-0621bb11d498');
INSERT INTO "comparisons" VALUES(202,99,96,96,'c99edcda-0a98-459a-b3e1-0621bb11d498');
INSERT INTO "comparisons" VALUES(203,53,106,106,'a04b0b91-0b3d-405a-8017-90de7caa9b82');
INSERT INTO "comparisons" VALUES(204,44,49,44,'65d7f1c2-634f-4d00-b156-e689bc63b819');
INSERT INTO "comparisons" VALUES(205,102,108,102,'65d7f1c2-634f-4d00-b156-e689bc63b819');
INSERT INTO "comparisons" VALUES(206,102,108,102,'65d7f1c2-634f-4d00-b156-e689bc63b819');
INSERT INTO "comparisons" VALUES(207,23,43,23,'65d7f1c2-634f-4d00-b156-e689bc63b819');
INSERT INTO "comparisons" VALUES(208,103,33,103,'65d7f1c2-634f-4d00-b156-e689bc63b819');
INSERT INTO "comparisons" VALUES(209,64,18,18,'6f9232ce-7bb4-48bf-ac45-967893efd165');
INSERT INTO "comparisons" VALUES(210,17,60,60,'6f9232ce-7bb4-48bf-ac45-967893efd165');
INSERT INTO "comparisons" VALUES(211,41,105,105,'6f9232ce-7bb4-48bf-ac45-967893efd165');
INSERT INTO "comparisons" VALUES(212,93,28,93,'6f9232ce-7bb4-48bf-ac45-967893efd165');
INSERT INTO "comparisons" VALUES(213,79,32,79,'6f9232ce-7bb4-48bf-ac45-967893efd165');
INSERT INTO "comparisons" VALUES(214,65,86,86,'db6751fa-f81d-4290-add9-94767597430d');
INSERT INTO "comparisons" VALUES(215,74,87,87,'db6751fa-f81d-4290-add9-94767597430d');
INSERT INTO "comparisons" VALUES(216,34,80,80,'db6751fa-f81d-4290-add9-94767597430d');
INSERT INTO "comparisons" VALUES(217,58,54,58,'4955d1f8-6192-4bf8-9a92-8078992490d7');
INSERT INTO "comparisons" VALUES(218,4,12,12,'db6751fa-f81d-4290-add9-94767597430d');
INSERT INTO "comparisons" VALUES(219,21,112,112,'4955d1f8-6192-4bf8-9a92-8078992490d7');
INSERT INTO "comparisons" VALUES(220,31,51,31,'4955d1f8-6192-4bf8-9a92-8078992490d7');
INSERT INTO "comparisons" VALUES(221,71,16,71,'4955d1f8-6192-4bf8-9a92-8078992490d7');
INSERT INTO "comparisons" VALUES(222,50,26,50,'4955d1f8-6192-4bf8-9a92-8078992490d7');
INSERT INTO "comparisons" VALUES(223,55,15,15,'4955d1f8-6192-4bf8-9a92-8078992490d7');
INSERT INTO "comparisons" VALUES(224,110,59,59,'4955d1f8-6192-4bf8-9a92-8078992490d7');
INSERT INTO "comparisons" VALUES(225,63,75,63,'4955d1f8-6192-4bf8-9a92-8078992490d7');
INSERT INTO "comparisons" VALUES(226,100,91,91,'4955d1f8-6192-4bf8-9a92-8078992490d7');
INSERT INTO "comparisons" VALUES(227,109,83,83,'4955d1f8-6192-4bf8-9a92-8078992490d7');
INSERT INTO "comparisons" VALUES(228,1,104,1,'893f3e98-1dbf-4318-bfda-eae572136513');
INSERT INTO "comparisons" VALUES(229,104,1,104,'4955d1f8-6192-4bf8-9a92-8078992490d7');
INSERT INTO "comparisons" VALUES(230,6,35,35,'893f3e98-1dbf-4318-bfda-eae572136513');
INSERT INTO "comparisons" VALUES(231,71,41,41,'4955d1f8-6192-4bf8-9a92-8078992490d7');
INSERT INTO "comparisons" VALUES(232,95,66,66,'893f3e98-1dbf-4318-bfda-eae572136513');
INSERT INTO "comparisons" VALUES(233,16,94,16,'4955d1f8-6192-4bf8-9a92-8078992490d7');
INSERT INTO "comparisons" VALUES(234,28,84,84,'893f3e98-1dbf-4318-bfda-eae572136513');
INSERT INTO "comparisons" VALUES(235,7,82,82,'4955d1f8-6192-4bf8-9a92-8078992490d7');
INSERT INTO "comparisons" VALUES(236,111,2,111,'893f3e98-1dbf-4318-bfda-eae572136513');
INSERT INTO "comparisons" VALUES(237,107,34,107,'4955d1f8-6192-4bf8-9a92-8078992490d7');
INSERT INTO "comparisons" VALUES(238,46,14,46,'4955d1f8-6192-4bf8-9a92-8078992490d7');
INSERT INTO "comparisons" VALUES(239,68,31,31,'893f3e98-1dbf-4318-bfda-eae572136513');
INSERT INTO "comparisons" VALUES(240,18,29,18,'4955d1f8-6192-4bf8-9a92-8078992490d7');
INSERT INTO "comparisons" VALUES(241,27,83,83,'893f3e98-1dbf-4318-bfda-eae572136513');
INSERT INTO "comparisons" VALUES(242,62,21,62,'4955d1f8-6192-4bf8-9a92-8078992490d7');
INSERT INTO "comparisons" VALUES(243,81,39,81,'665a29d9-bf22-4932-a824-dd6e5fdb1095');
INSERT INTO "comparisons" VALUES(244,114,22,114,'665a29d9-bf22-4932-a824-dd6e5fdb1095');
INSERT INTO "comparisons" VALUES(245,54,40,54,'665a29d9-bf22-4932-a824-dd6e5fdb1095');
INSERT INTO "comparisons" VALUES(246,60,23,60,'665a29d9-bf22-4932-a824-dd6e5fdb1095');
INSERT INTO "comparisons" VALUES(247,42,36,42,'665a29d9-bf22-4932-a824-dd6e5fdb1095');
INSERT INTO "comparisons" VALUES(248,56,5,5,'15a5a2c9-9bab-4cba-be96-618ac33f1ecb');
INSERT INTO "comparisons" VALUES(249,35,56,35,'665a29d9-bf22-4932-a824-dd6e5fdb1095');
INSERT INTO "comparisons" VALUES(250,17,106,106,'15a5a2c9-9bab-4cba-be96-618ac33f1ecb');
INSERT INTO "comparisons" VALUES(251,73,67,67,'665a29d9-bf22-4932-a824-dd6e5fdb1095');
INSERT INTO "comparisons" VALUES(252,59,69,69,'15a5a2c9-9bab-4cba-be96-618ac33f1ecb');
INSERT INTO "comparisons" VALUES(253,74,24,74,'665a29d9-bf22-4932-a824-dd6e5fdb1095');
INSERT INTO "comparisons" VALUES(254,13,64,64,'665a29d9-bf22-4932-a824-dd6e5fdb1095');
INSERT INTO "comparisons" VALUES(255,6,79,79,'a81db133-0967-4f56-9f34-57ef8c467e95');
INSERT INTO "comparisons" VALUES(256,3,75,3,'a81db133-0967-4f56-9f34-57ef8c467e95');
INSERT INTO "comparisons" VALUES(257,77,99,77,'8125296a-92df-4ae9-84a9-ca2b354b5c17');
INSERT INTO "comparisons" VALUES(258,58,37,58,'8125296a-92df-4ae9-84a9-ca2b354b5c17');
INSERT INTO "comparisons" VALUES(259,96,12,12,'65577539-b979-4911-9c9f-1dfe7043e0ef');
INSERT INTO "comparisons" VALUES(260,85,53,53,'65577539-b979-4911-9c9f-1dfe7043e0ef');
INSERT INTO "comparisons" VALUES(261,38,49,49,'65577539-b979-4911-9c9f-1dfe7043e0ef');
INSERT INTO "comparisons" VALUES(262,101,11,11,'65577539-b979-4911-9c9f-1dfe7043e0ef');
INSERT INTO "comparisons" VALUES(263,112,70,112,'65577539-b979-4911-9c9f-1dfe7043e0ef');
INSERT INTO "comparisons" VALUES(264,88,76,76,'65577539-b979-4911-9c9f-1dfe7043e0ef');
INSERT INTO "comparisons" VALUES(265,87,91,91,'65577539-b979-4911-9c9f-1dfe7043e0ef');
INSERT INTO "comparisons" VALUES(266,30,52,30,'65577539-b979-4911-9c9f-1dfe7043e0ef');
INSERT INTO "comparisons" VALUES(267,57,45,57,'65577539-b979-4911-9c9f-1dfe7043e0ef');
INSERT INTO "comparisons" VALUES(268,80,8,8,'9b22403d-0f3f-4d27-8150-48666d73953e');
INSERT INTO "comparisons" VALUES(269,80,105,105,'65577539-b979-4911-9c9f-1dfe7043e0ef');
INSERT INTO "comparisons" VALUES(270,113,43,113,'65577539-b979-4911-9c9f-1dfe7043e0ef');
INSERT INTO "comparisons" VALUES(271,15,97,97,'65577539-b979-4911-9c9f-1dfe7043e0ef');
INSERT INTO "comparisons" VALUES(272,92,33,33,'3f0ef194-f4c3-4bf6-91f7-cd2603a84ef9');
INSERT INTO "comparisons" VALUES(273,98,93,98,'3f0ef194-f4c3-4bf6-91f7-cd2603a84ef9');
INSERT INTO "comparisons" VALUES(274,19,48,48,'3f0ef194-f4c3-4bf6-91f7-cd2603a84ef9');
INSERT INTO "comparisons" VALUES(275,20,55,20,'3f0ef194-f4c3-4bf6-91f7-cd2603a84ef9');
INSERT INTO "comparisons" VALUES(276,47,4,47,'3f0ef194-f4c3-4bf6-91f7-cd2603a84ef9');
INSERT INTO "comparisons" VALUES(277,26,63,63,'3f0ef194-f4c3-4bf6-91f7-cd2603a84ef9');
INSERT INTO "comparisons" VALUES(278,44,61,44,'3f0ef194-f4c3-4bf6-91f7-cd2603a84ef9');
INSERT INTO "comparisons" VALUES(279,109,103,103,'4b7ecb22-60a3-410d-92f7-1ce151798324');
INSERT INTO "comparisons" VALUES(280,25,9,25,'4b7ecb22-60a3-410d-92f7-1ce151798324');
INSERT INTO "comparisons" VALUES(281,65,72,72,'4b7ecb22-60a3-410d-92f7-1ce151798324');
INSERT INTO "comparisons" VALUES(282,86,90,86,'4b7ecb22-60a3-410d-92f7-1ce151798324');
INSERT INTO "comparisons" VALUES(283,32,100,32,'4b7ecb22-60a3-410d-92f7-1ce151798324');
INSERT INTO "comparisons" VALUES(284,50,110,50,'4b7ecb22-60a3-410d-92f7-1ce151798324');
INSERT INTO "comparisons" VALUES(285,89,78,89,'4b7ecb22-60a3-410d-92f7-1ce151798324');
CREATE TABLE sessions (
    session_id integer primary key autoincrement not null,
    suuid text,
	user_id integer,
    start_time text,
	foreign key(suuid) references comparisons(suuid)
);
INSERT INTO "sessions" VALUES(1,'5e69b516-c4b4-44d7-a687-3f661c8dd811',2,'2016-06-09 17:32:58.514330');
INSERT INTO "sessions" VALUES(2,'9603a322-4571-4193-aa0b-e96f9c49702a',1,'2016-06-09 17:42:48.883716');
INSERT INTO "sessions" VALUES(3,'9dc0273a-0f51-4787-9ff3-38b2b3d9c21f',3,'2016-06-09 17:46:20.907930');
INSERT INTO "sessions" VALUES(4,'d1a3f764-7eaf-402e-be6c-882d6dd159ed',2,'2016-06-09 18:00:45.523400');
INSERT INTO "sessions" VALUES(5,'c62962b7-1c48-42f7-a4d6-c183c7aaf7cd',1,'2016-06-09 19:40:01.070823');
INSERT INTO "sessions" VALUES(6,'8cd82776-fadf-41e2-a875-26ac927edad0',2,'2016-06-09 19:48:32.621553');
INSERT INTO "sessions" VALUES(7,'d7cb443a-7627-4097-ac10-28049e85099d',4,'2016-06-09 20:50:45.275950');
INSERT INTO "sessions" VALUES(8,'1a225788-4492-4d0f-84e2-2c0a4be33971',5,'2016-06-10 11:25:14.480287');
INSERT INTO "sessions" VALUES(9,'7a7199be-0dc2-4c3d-84d2-7a056887e2bf',2,'2016-06-10 12:11:47.025178');
INSERT INTO "sessions" VALUES(10,'fa47e225-9c69-47de-a61b-e045a1c16fcc',2,'2016-06-10 12:15:06.167445');
INSERT INTO "sessions" VALUES(11,'bb291bf7-3f2b-4b81-9202-b9bc973382a9',2,'2016-06-10 13:38:49.092063');
INSERT INTO "sessions" VALUES(12,'c99edcda-0a98-459a-b3e1-0621bb11d498',2,'2016-06-10 13:39:41.268591');
INSERT INTO "sessions" VALUES(13,'65d7f1c2-634f-4d00-b156-e689bc63b819',2,'2016-06-10 15:20:15.309985');
INSERT INTO "sessions" VALUES(14,'6f9232ce-7bb4-48bf-ac45-967893efd165',1,'2016-06-10 16:27:35.991327');
INSERT INTO "sessions" VALUES(15,'db6751fa-f81d-4290-add9-94767597430d',5,'2016-06-10 16:28:26.035541');
INSERT INTO "sessions" VALUES(16,'4955d1f8-6192-4bf8-9a92-8078992490d7',2,'2016-06-10 16:29:52.669417');
INSERT INTO "sessions" VALUES(17,'893f3e98-1dbf-4318-bfda-eae572136513',5,'2016-06-10 16:34:23.333378');
INSERT INTO "sessions" VALUES(18,'665a29d9-bf22-4932-a824-dd6e5fdb1095',2,'2016-06-10 16:45:33.331795');
INSERT INTO "sessions" VALUES(19,'15a5a2c9-9bab-4cba-be96-618ac33f1ecb',5,'2016-06-10 16:47:38.999759');
INSERT INTO "sessions" VALUES(20,'a81db133-0967-4f56-9f34-57ef8c467e95',2,'2016-06-10 17:32:30.813504');
INSERT INTO "sessions" VALUES(21,'8125296a-92df-4ae9-84a9-ca2b354b5c17',2,'2016-06-10 17:33:17.955265');
INSERT INTO "sessions" VALUES(22,'65577539-b979-4911-9c9f-1dfe7043e0ef',1,'2016-06-10 17:33:48.184213');
INSERT INTO "sessions" VALUES(23,'9b22403d-0f3f-4d27-8150-48666d73953e',7,'2016-06-10 17:38:59.313377');
INSERT INTO "sessions" VALUES(24,'3f0ef194-f4c3-4bf6-91f7-cd2603a84ef9',2,'2016-06-10 18:26:42.480087');
INSERT INTO "sessions" VALUES(25,'4b7ecb22-60a3-410d-92f7-1ce151798324',8,'2016-06-10 20:53:05.103659');
DELETE FROM "sqlite_sequence";
INSERT INTO "sqlite_sequence" VALUES('videos',114);
INSERT INTO "sqlite_sequence" VALUES('users',8);
INSERT INTO "sqlite_sequence" VALUES('sessions',25);
INSERT INTO "sqlite_sequence" VALUES('comparisons',285);
CREATE TABLE users (
    user_id integer primary key autoincrement not null,
    username text,
    password text,
    license bool, 
	foreign key(user_id) references sessions(user_id)
);
INSERT INTO "users" VALUES(1,'admin','admin',1);
INSERT INTO "users" VALUES(2,'u1','123',1);
INSERT INTO "users" VALUES(3,'u2','123',1);
INSERT INTO "users" VALUES(4,'ed','123',1);
INSERT INTO "users" VALUES(5,'alina','alina',1);
INSERT INTO "users" VALUES(6,'u1','123',0);
INSERT INTO "users" VALUES(7,'Joshua','Joshua',1);
INSERT INTO "users" VALUES(8,'luke2','luke2',1);
CREATE TABLE videos (
    video_id integer primary key autoincrement not null,
    filepath text not null,
	num_comparisons	integer
);
INSERT INTO "videos" VALUES(1,'/static/videos/d11d_V1391089173_980.ogv',5);
INSERT INTO "videos" VALUES(2,'/static/videos/d21d_V1391160865_992.ogv',5);
INSERT INTO "videos" VALUES(3,'/static/videos/d13d_V1391091201_995.ogv',5);
INSERT INTO "videos" VALUES(4,'/static/videos/d31d_V1391161819_012.ogv',5);
INSERT INTO "videos" VALUES(5,'/static/videos/d31dt_V1391090427_977.ogv',5);
INSERT INTO "videos" VALUES(6,'/static/videos/d12d_V1391090599_058.ogv',5);
INSERT INTO "videos" VALUES(7,'/static/videos/d21d_V1391160921_009.ogv',5);
INSERT INTO "videos" VALUES(8,'/static/videos/d32d_V1391089618_019.ogv',5);
INSERT INTO "videos" VALUES(9,'/static/videos/d31d_V1391091137_988.ogv',5);
INSERT INTO "videos" VALUES(10,'/static/videos/d32dt_V1391089773_981.ogv',4);
INSERT INTO "videos" VALUES(11,'/static/videos/d41d_V1391089271_986.ogv',5);
INSERT INTO "videos" VALUES(12,'/static/videos/d41d_V1391088812_997.ogv',5);
INSERT INTO "videos" VALUES(13,'/static/videos/d11d_V1391089869_985.ogv',5);
INSERT INTO "videos" VALUES(14,'/static/videos/d12d_V1391161454_031.ogv',5);
INSERT INTO "videos" VALUES(15,'/static/videos/d41d_V1391088287_019.ogv',5);
INSERT INTO "videos" VALUES(16,'/static/videos/d12d_V1391090716_992.ogv',5);
INSERT INTO "videos" VALUES(17,'/static/videos/d21d_V1391091403_996.ogv',5);
INSERT INTO "videos" VALUES(18,'/static/videos/d31dt_V1391088310_004.ogv',5);
INSERT INTO "videos" VALUES(19,'/static/videos/d41d_V1391089267_972.ogv',5);
INSERT INTO "videos" VALUES(20,'/static/videos/d21d_V1391089811_991.ogv',5);
INSERT INTO "videos" VALUES(21,'/static/videos/d11d_V1391089227_008.ogv',5);
INSERT INTO "videos" VALUES(22,'/static/videos/d31d_V1391089260_965.ogv',5);
INSERT INTO "videos" VALUES(23,'/static/videos/d12d_V1391090594_976.ogv',5);
INSERT INTO "videos" VALUES(24,'/static/videos/d31d_V1391091188_992.ogv',5);
INSERT INTO "videos" VALUES(25,'/static/videos/d31d_V1391089434_021.ogv',5);
INSERT INTO "videos" VALUES(26,'/static/videos/d12d_V1391090695_974.ogv',5);
INSERT INTO "videos" VALUES(27,'/static/videos/d33d_V1391088805_018.ogv',5);
INSERT INTO "videos" VALUES(28,'/static/videos/d21d_V1391089161_003.ogv',5);
INSERT INTO "videos" VALUES(29,'/static/videos/d21dt_V1391089896_024.ogv',5);
INSERT INTO "videos" VALUES(30,'/static/videos/d32d_V1391088291_994.ogv',5);
INSERT INTO "videos" VALUES(31,'/static/videos/d23d_V1391090477_976.ogv',5);
INSERT INTO "videos" VALUES(32,'/static/videos/d31dt_V1391088313_974.ogv',5);
INSERT INTO "videos" VALUES(33,'/static/videos/d11dt_V1391160777_011.ogv',5);
INSERT INTO "videos" VALUES(34,'/static/videos/d11d_V1391160908_014.ogv',5);
INSERT INTO "videos" VALUES(35,'/static/videos/d23d_V1391090482_027.ogv',5);
INSERT INTO "videos" VALUES(36,'/static/videos/d31d_V1391090412_987.ogv',5);
INSERT INTO "videos" VALUES(37,'/static/videos/d21d_V1391089372_968.ogv',5);
INSERT INTO "videos" VALUES(38,'/static/videos/d13d_V1391091357_997.ogv',5);
INSERT INTO "videos" VALUES(39,'/static/videos/d11d_V1391090953_968.ogv',5);
INSERT INTO "videos" VALUES(40,'/static/videos/d32dt_V1391089778_007.ogv',5);
INSERT INTO "videos" VALUES(41,'/static/videos/d11d_V1391088279_038.ogv',5);
INSERT INTO "videos" VALUES(42,'/static/videos/d21d_V1391161251_002.ogv',5);
INSERT INTO "videos" VALUES(43,'/static/videos/d11dt_V1391160773_012.ogv',5);
INSERT INTO "videos" VALUES(44,'/static/videos/d21d_V1391089417_986.ogv',5);
INSERT INTO "videos" VALUES(45,'/static/videos/d21d_V1391089142_021.ogv',5);
INSERT INTO "videos" VALUES(46,'/static/videos/d31d_V1391091038_973.ogv',5);
INSERT INTO "videos" VALUES(47,'/static/videos/d21dt_V1391161847_006.ogv',5);
INSERT INTO "videos" VALUES(48,'/static/videos/d31d_V1391091145_961.ogv',5);
INSERT INTO "videos" VALUES(49,'/static/videos/d31d_V1391091141_992.ogv',5);
INSERT INTO "videos" VALUES(50,'/static/videos/d21d_V1391160727_024.ogv',5);
INSERT INTO "videos" VALUES(51,'/static/videos/d11d_V1391160670_995.ogv',4);
INSERT INTO "videos" VALUES(52,'/static/videos/d11d_V1391160674_995.ogv',5);
INSERT INTO "videos" VALUES(53,'/static/videos/d32dt_V1391088863_988.ogv',5);
INSERT INTO "videos" VALUES(54,'/static/videos/d31d_V1391091129_993.ogv',5);
INSERT INTO "videos" VALUES(55,'/static/videos/d11dt_V1391160781_008.ogv',5);
INSERT INTO "videos" VALUES(56,'/static/videos/d21d_V1391089399_040.ogv',6);
INSERT INTO "videos" VALUES(57,'/static/videos/d21d_V1391088961_985.ogv',5);
INSERT INTO "videos" VALUES(58,'/static/videos/d32d_V1391090945_992.ogv',5);
INSERT INTO "videos" VALUES(59,'/static/videos/d21d_V1391088334_966.ogv',5);
INSERT INTO "videos" VALUES(60,'/static/videos/d12d_V1391090657_984.ogv',5);
INSERT INTO "videos" VALUES(61,'/static/videos/d31d_V1391091286_997.ogv',5);
INSERT INTO "videos" VALUES(62,'/static/videos/d41dt_V1391160762_012.ogv',5);
INSERT INTO "videos" VALUES(63,'/static/videos/d11d_V1391089190_961.ogv',5);
INSERT INTO "videos" VALUES(64,'/static/videos/d21d_V1391088338_989.ogv',5);
INSERT INTO "videos" VALUES(65,'/static/videos/d12d_V1391089081_990.ogv',5);
INSERT INTO "videos" VALUES(66,'/static/videos/d32d_V1391091483_017.ogv',5);
INSERT INTO "videos" VALUES(67,'/static/videos/d13d_V1391090558_985.ogv',5);
INSERT INTO "videos" VALUES(68,'/static/videos/d21d_V1391088295_974.ogv',5);
INSERT INTO "videos" VALUES(69,'/static/videos/d21d_V1391088825_975.ogv',5);
INSERT INTO "videos" VALUES(70,'/static/videos/d13d_V1391090669_975.ogv',5);
INSERT INTO "videos" VALUES(71,'/static/videos/d31d_V1391091133_995.ogv',5);
INSERT INTO "videos" VALUES(72,'/static/videos/d21d_V1391160916_991.ogv',5);
INSERT INTO "videos" VALUES(73,'/static/videos/d11d_V1391089511_992.ogv',5);
INSERT INTO "videos" VALUES(74,'/static/videos/d41dt_V1391160750_015.ogv',5);
INSERT INTO "videos" VALUES(75,'/static/videos/d11d_V1391089230_989.ogv',5);
INSERT INTO "videos" VALUES(76,'/static/videos/d23d_V1391090711_994.ogv',5);
INSERT INTO "videos" VALUES(77,'/static/videos/d14d_V1391090706_989.ogv',5);
INSERT INTO "videos" VALUES(78,'/static/videos/d11d_V1391088320_977.ogv',5);
INSERT INTO "videos" VALUES(79,'/static/videos/d21dt_V1391161050_012.ogv',5);
INSERT INTO "videos" VALUES(80,'/static/videos/d12d_V1391161450_030.ogv',6);
INSERT INTO "videos" VALUES(81,'/static/videos/d11d_V1391090986_976.ogv',5);
INSERT INTO "videos" VALUES(82,'/static/videos/d22d_V1391091193_976.ogv',5);
INSERT INTO "videos" VALUES(83,'/static/videos/d31dt_V1391161162_022.ogv',5);
INSERT INTO "videos" VALUES(84,'/static/videos/d22d_V1391161232_006.ogv',5);
INSERT INTO "videos" VALUES(85,'/static/videos/d11d_V1391090407_033.ogv',5);
INSERT INTO "videos" VALUES(86,'/static/videos/d32dt_V1391088867_977.ogv',5);
INSERT INTO "videos" VALUES(87,'/static/videos/d22d_V1391090419_976.ogv',5);
INSERT INTO "videos" VALUES(88,'/static/videos/d21d_V1391089145_983.ogv',5);
INSERT INTO "videos" VALUES(89,'/static/videos/d21d_V1391161578_999.ogv',5);
INSERT INTO "videos" VALUES(90,'/static/videos/d22d_V1391090751_009.ogv',5);
INSERT INTO "videos" VALUES(91,'/static/videos/d22dt_V1391089501_998.ogv',5);
INSERT INTO "videos" VALUES(92,'/static/videos/d21d_V1391161596_027.ogv',5);
INSERT INTO "videos" VALUES(93,'/static/videos/d31d_V1391088808_993.ogv',5);
INSERT INTO "videos" VALUES(94,'/static/videos/d11dt_V1391089806_059.ogv',5);
INSERT INTO "videos" VALUES(95,'/static/videos/d31dt_V1391090924_983.ogv',5);
INSERT INTO "videos" VALUES(96,'/static/videos/d41dt_V1391160754_011.ogv',5);
INSERT INTO "videos" VALUES(97,'/static/videos/d21d_V1391089297_961.ogv',5);
INSERT INTO "videos" VALUES(98,'/static/videos/d22d_V1391090919_980.ogv',5);
INSERT INTO "videos" VALUES(99,'/static/videos/d22d_V1391161228_012.ogv',5);
INSERT INTO "videos" VALUES(100,'/static/videos/d12d_V1391090747_035.ogv',5);
INSERT INTO "videos" VALUES(101,'/static/videos/d21d_V1391089090_964.ogv',5);
INSERT INTO "videos" VALUES(102,'/static/videos/d13dt_V1391090446_978.ogv',5);
INSERT INTO "videos" VALUES(103,'/static/videos/d21d_V1391089301_997.ogv',5);
INSERT INTO "videos" VALUES(104,'/static/videos/d21d_V1391088327_052.ogv',5);
INSERT INTO "videos" VALUES(105,'/static/videos/d41dt_V1391160758_010.ogv',5);
INSERT INTO "videos" VALUES(106,'/static/videos/d13d_V1391091541_997.ogv',5);
INSERT INTO "videos" VALUES(107,'/static/videos/d21d_V1391161247_003.ogv',5);
INSERT INTO "videos" VALUES(108,'/static/videos/d21d_V1391161583_000.ogv',5);
INSERT INTO "videos" VALUES(109,'/static/videos/d31dt_V1391090432_001.ogv',5);
INSERT INTO "videos" VALUES(110,'/static/videos/d32d_V1391161257_001.ogv',5);
INSERT INTO "videos" VALUES(111,'/static/videos/d21d_V1391090452_037.ogv',5);
INSERT INTO "videos" VALUES(112,'/static/videos/d21d_V1391090647_976.ogv',5);
INSERT INTO "videos" VALUES(113,'/static/videos/d21d_V1391088330_996.ogv',5);
INSERT INTO "videos" VALUES(114,'/static/videos/d12_V1391090608_015.ogv',5);
COMMIT;
