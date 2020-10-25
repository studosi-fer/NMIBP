--drop table tramRouteSchedule;
--drop table tramRouteStation;
--drop table tramStation;
--drop table tramRoute;

CREATE TABLE tramRoute
(tramRouteId     INTEGER CONSTRAINT pkTramRoute PRIMARY KEY,
 tramRouteAbrev  CHAR(3) NOT NULL UNIQUE,
 tramRouteName   VARCHAR(120) NOT NULL UNIQUE
  );
 
CREATE TABLE tramStation
(tramStationId   INTEGER CONSTRAINT pktramStation PRIMARY KEY,
 tramStationName VARCHAR(120) NOT NULL UNIQUE
 );

CREATE TABLE tramRouteStation
(tramRouteId     INTEGER CONSTRAINT fkTramRouteStationTramRoute REFERENCES tramRoute(tramRouteId),
 tramStationId   INTEGER CONSTRAINT fkTramRouteStationTramStation REFERENCES tramStation(tramStationId),
 tramStationOrd  SMALLINT NOT NULL,
 CONSTRAINT pktramRouteStation PRIMARY KEY (tramRouteId, tramStationId) 
 );

CREATE TABLE tramRouteSchedule
(tramRouteId    INTEGER CONSTRAINT fkTramRouteStationTramRoute REFERENCES tramRoute(tramRouteId),
 departureTime  TIME,
 
 CONSTRAINT pkTramRouteSchedule PRIMARY KEY (tramRouteId, departureTime) 
 );
 
INSERT INTO tramRoute   VALUES (1, '1', 'Zapadni kolodvor - Borongaj');
INSERT INTO tramRoute   VALUES (2, '2', 'Črnomerec - Savišće');
INSERT INTO tramRoute  VALUES (3, '3', 'Ljubljanica - Savišće');


INSERT INTO tramStation VALUES (1,  'Zapadni kolodvor') ;
INSERT INTO tramStation VALUES (2,  'Talovčeva') ;
INSERT INTO tramStation VALUES (3,  'Reljkovićeva');
INSERT INTO tramStation VALUES (4,  'Trg dr. Franje Tuđmana');
INSERT INTO tramStation VALUES (5,  'Britanski trg');
INSERT INTO tramStation VALUES (6,  'Frankopanska');
INSERT INTO tramStation VALUES (7,  'Trg Bana Josipa Jelačića');
INSERT INTO tramStation VALUES (8,  'Trg Hrvatskih velikana');
INSERT INTO tramStation VALUES (9,  'Trg žrtava fašizma');
INSERT INTO tramStation VALUES (10, 'Šubićeva');
INSERT INTO tramStation VALUES (11, 'Tuškanova');
INSERT INTO tramStation VALUES (12, 'Heinzelova');
INSERT INTO tramStation VALUES (13, 'Šulekova');
INSERT INTO tramStation VALUES (14, 'Harambašićeva');
INSERT INTO tramStation VALUES (15, 'Svetice');
INSERT INTO tramStation VALUES (16, 'Borongaj');
INSERT INTO tramStation VALUES (17, 'Črnomerec') ;  
INSERT INTO tramStation VALUES (18, 'Sveti Duh') ;
INSERT INTO tramStation VALUES (19, 'Mandaličina');
INSERT INTO tramStation VALUES (20, 'Slovenska');
INSERT INTO tramStation VALUES (21, 'Jagićeva');
INSERT INTO tramStation VALUES (22, 'Adžijina');
INSERT INTO tramStation VALUES (26, 'Vodnikova');
INSERT INTO tramStation VALUES (27, 'Botanički vrt');
INSERT INTO tramStation VALUES (28, 'Glavni kolodvor');
INSERT INTO tramStation VALUES (29, 'Branimirova');
INSERT INTO tramStation VALUES (30, 'Branimirova tržnica');
INSERT INTO tramStation VALUES (31, 'Autobusni kolodvor');
INSERT INTO tramStation VALUES (32, 'Držićeva');
INSERT INTO tramStation VALUES (33, 'Olipska');
INSERT INTO tramStation VALUES (34, 'Radnička');
INSERT INTO tramStation VALUES (36, 'Donje Svetice');
INSERT INTO tramStation VALUES (37, 'Ivanićgradska');
INSERT INTO tramStation VALUES (38, 'Ferenščica');
INSERT INTO tramStation VALUES (39, 'Getaldićeva');
INSERT INTO tramStation VALUES (41, 'Čavićeva');
INSERT INTO tramStation VALUES (42, 'Žitnjak');
INSERT INTO tramStation VALUES (43, 'Elka');
INSERT INTO tramStation VALUES (44, 'Munja');
INSERT INTO tramStation VALUES (45, 'Zagrebački transporti');
INSERT INTO tramStation VALUES (46, 'Savišće');
INSERT INTO tramStation VALUES (47, 'Ljubljanica');
INSERT INTO tramStation VALUES (48, 'Selska');
INSERT INTO tramStation VALUES (49, 'Nehajska');
INSERT INTO tramStation VALUES (23, 'Trešnjevački trg');
INSERT INTO tramStation VALUES (24, 'Badalićeva');
INSERT INTO tramStation VALUES (25, 'Tehnički muzej');
INSERT INTO tramStation VALUES (50, 'Studentski centar');
INSERT INTO tramStation VALUES (51, 'Zagrepčanka');
INSERT INTO tramStation VALUES (52, 'Vrbik');
INSERT INTO tramStation VALUES (53, 'Sveučilišna aleja');
INSERT INTO tramStation VALUES (54, 'Miramarska');
INSERT INTO tramStation VALUES (55, 'Lisinski');
INSERT INTO tramStation VALUES (56, 'Kruge');
INSERT INTO tramStation VALUES (57, 'Strojarska');

INSERT INTO tramRouteStation VALUES (1, 1 , 1);
INSERT INTO tramRouteStation VALUES (1, 2 , 2);
INSERT INTO tramRouteStation VALUES (1, 3 , 3);
INSERT INTO tramRouteStation VALUES (1, 4 , 4);
INSERT INTO tramRouteStation VALUES (1, 5 , 5);
INSERT INTO tramRouteStation VALUES (1, 6 , 6);
INSERT INTO tramRouteStation VALUES (1, 7 , 7);
INSERT INTO tramRouteStation VALUES (1, 8 , 8);
INSERT INTO tramRouteStation VALUES (1, 9 , 9);
INSERT INTO tramRouteStation VALUES (1, 10, 10);
INSERT INTO tramRouteStation VALUES (1, 11, 11);
INSERT INTO tramRouteStation VALUES (1, 12, 12);
INSERT INTO tramRouteStation VALUES (1, 13, 13);
INSERT INTO tramRouteStation VALUES (1, 14, 14);
INSERT INTO tramRouteStation VALUES (1, 15, 15);
INSERT INTO tramRouteStation VALUES (1, 16, 16);


INSERT INTO tramRouteStation VALUES (2, 17, 1);
INSERT INTO tramRouteStation VALUES (2, 18, 2);
INSERT INTO tramRouteStation VALUES (2, 19, 3);
INSERT INTO tramRouteStation VALUES (2, 20, 4);
INSERT INTO tramRouteStation VALUES (2, 4 , 5);
INSERT INTO tramRouteStation VALUES (2, 3 , 6);
INSERT INTO tramRouteStation VALUES (2, 21, 7);
INSERT INTO tramRouteStation VALUES (2, 22, 8);
INSERT INTO tramRouteStation VALUES (2, 26, 9);
INSERT INTO tramRouteStation VALUES (2, 27, 10);
INSERT INTO tramRouteStation VALUES (2, 28, 11);
INSERT INTO tramRouteStation VALUES (2, 29, 12);
INSERT INTO tramRouteStation VALUES (2, 30, 13);
INSERT INTO tramRouteStation VALUES (2, 31, 14);
INSERT INTO tramRouteStation VALUES (2, 32, 15);
INSERT INTO tramRouteStation VALUES (2, 33, 16);
INSERT INTO tramRouteStation VALUES (2, 34, 17);
INSERT INTO tramRouteStation VALUES (2, 12, 18);
INSERT INTO tramRouteStation VALUES (2, 36, 19);
INSERT INTO tramRouteStation VALUES (2, 37, 20);
INSERT INTO tramRouteStation VALUES (2, 38, 21);
INSERT INTO tramRouteStation VALUES (2, 39, 22);
INSERT INTO tramRouteStation VALUES (2, 41, 23);
INSERT INTO tramRouteStation VALUES (2, 42, 24);
INSERT INTO tramRouteStation VALUES (2, 43, 25);
INSERT INTO tramRouteStation VALUES (2, 44, 26);
INSERT INTO tramRouteStation VALUES (2, 45, 27);
INSERT INTO tramRouteStation VALUES (2, 46, 28);


INSERT INTO tramRouteStation VALUES (3, 47, 1);
INSERT INTO tramRouteStation VALUES (3, 48, 2);
INSERT INTO tramRouteStation VALUES (3, 49, 3);
INSERT INTO tramRouteStation VALUES (3, 23, 4);
INSERT INTO tramRouteStation VALUES (3, 24, 5);
INSERT INTO tramRouteStation VALUES (3, 25, 6);
INSERT INTO tramRouteStation VALUES (3, 50, 7);
INSERT INTO tramRouteStation VALUES (3, 51, 8);
INSERT INTO tramRouteStation VALUES (3, 52, 9);
INSERT INTO tramRouteStation VALUES (3, 53, 10);
INSERT INTO tramRouteStation VALUES (3, 54, 11);
INSERT INTO tramRouteStation VALUES (3, 55, 12);
INSERT INTO tramRouteStation VALUES (3, 56, 13);
INSERT INTO tramRouteStation VALUES (3, 57, 14);
INSERT INTO tramRouteStation VALUES (3, 32, 15);
INSERT INTO tramRouteStation VALUES (3, 33, 16);
INSERT INTO tramRouteStation VALUES (3, 34, 17);
INSERT INTO tramRouteStation VALUES (3, 12, 18);
INSERT INTO tramRouteStation VALUES (3, 36, 19);
INSERT INTO tramRouteStation VALUES (3, 37, 20);
INSERT INTO tramRouteStation VALUES (3, 38, 21);
INSERT INTO tramRouteStation VALUES (3, 39, 22);
INSERT INTO tramRouteStation VALUES (3, 41, 24);
INSERT INTO tramRouteStation VALUES (3, 42, 25);
INSERT INTO tramRouteStation VALUES (3, 43, 26);
INSERT INTO tramRouteStation VALUES (3, 44, 27);
INSERT INTO tramRouteStation VALUES (3, 45, 28);
INSERT INTO tramRouteStation VALUES (3, 46, 29);


INSERT INTO tramRouteSchedule VALUES (1, '04:16:52');
INSERT INTO tramRouteSchedule VALUES (1, '04:42:00');
INSERT INTO tramRouteSchedule VALUES (1, '05:00:22');
INSERT INTO tramRouteSchedule VALUES (1, '05:18:44');
INSERT INTO tramRouteSchedule VALUES (1, '05:37:06');
INSERT INTO tramRouteSchedule VALUES (1, '05:55:30');
INSERT INTO tramRouteSchedule VALUES (1, '06:01:59');
INSERT INTO tramRouteSchedule VALUES (1, '06:14:50');
INSERT INTO tramRouteSchedule VALUES (1, '06:32:00');
INSERT INTO tramRouteSchedule VALUES (1, '06:45:00');
INSERT INTO tramRouteSchedule VALUES (1, '06:57:00');
INSERT INTO tramRouteSchedule VALUES (1, '07:09:00');
INSERT INTO tramRouteSchedule VALUES (1, '07:21:15');
INSERT INTO tramRouteSchedule VALUES (1, '07:34:00');
INSERT INTO tramRouteSchedule VALUES (1, '07:47:00');
INSERT INTO tramRouteSchedule VALUES (1, '07:58:02');
INSERT INTO tramRouteSchedule VALUES (1, '08:09:00');
INSERT INTO tramRouteSchedule VALUES (1, '08:21:35');
INSERT INTO tramRouteSchedule VALUES (1, '08:34:00');
INSERT INTO tramRouteSchedule VALUES (1, '08:46:15');
INSERT INTO tramRouteSchedule VALUES (1, '08:57:00');
INSERT INTO tramRouteSchedule VALUES (1, '09:09:50');
INSERT INTO tramRouteSchedule VALUES (1, '09:21:22');
INSERT INTO tramRouteSchedule VALUES (1, '09:32:44');
INSERT INTO tramRouteSchedule VALUES (1, '09:44:06');
INSERT INTO tramRouteSchedule VALUES (1, '09:55:28');
INSERT INTO tramRouteSchedule VALUES (1, '10:06:50');
INSERT INTO tramRouteSchedule VALUES (1, '10:18:12');
INSERT INTO tramRouteSchedule VALUES (1, '10:29:34');
INSERT INTO tramRouteSchedule VALUES (1, '10:40:56');
INSERT INTO tramRouteSchedule VALUES (1, '10:52:18');
INSERT INTO tramRouteSchedule VALUES (1, '11:03:40');
INSERT INTO tramRouteSchedule VALUES (1, '11:15:02');
INSERT INTO tramRouteSchedule VALUES (1, '11:26:24');
INSERT INTO tramRouteSchedule VALUES (1, '11:37:46');
INSERT INTO tramRouteSchedule VALUES (1, '11:49:08');
INSERT INTO tramRouteSchedule VALUES (1, '12:00:30');
INSERT INTO tramRouteSchedule VALUES (1, '12:11:52');
INSERT INTO tramRouteSchedule VALUES (1, '12:23:14');
INSERT INTO tramRouteSchedule VALUES (1, '12:34:36');
INSERT INTO tramRouteSchedule VALUES (1, '12:45:58');
INSERT INTO tramRouteSchedule VALUES (1, '12:57:58');
INSERT INTO tramRouteSchedule VALUES (1, '13:08:42');
INSERT INTO tramRouteSchedule VALUES (1, '13:20:30');
INSERT INTO tramRouteSchedule VALUES (1, '13:32:35');
INSERT INTO tramRouteSchedule VALUES (1, '13:44:40');
INSERT INTO tramRouteSchedule VALUES (1, '13:56:45');
INSERT INTO tramRouteSchedule VALUES (1, '14:08:50');
INSERT INTO tramRouteSchedule VALUES (1, '14:20:55');
INSERT INTO tramRouteSchedule VALUES (1, '14:33:00');
INSERT INTO tramRouteSchedule VALUES (1, '14:45:05');
INSERT INTO tramRouteSchedule VALUES (1, '14:57:10');
INSERT INTO tramRouteSchedule VALUES (1, '15:09:15');
INSERT INTO tramRouteSchedule VALUES (1, '15:21:20');
INSERT INTO tramRouteSchedule VALUES (1, '15:33:25');
INSERT INTO tramRouteSchedule VALUES (1, '15:45:30');
INSERT INTO tramRouteSchedule VALUES (1, '15:57:35');
INSERT INTO tramRouteSchedule VALUES (1, '16:09:40');
INSERT INTO tramRouteSchedule VALUES (1, '16:21:45');
INSERT INTO tramRouteSchedule VALUES (1, '16:33:50');
INSERT INTO tramRouteSchedule VALUES (1, '16:45:55');
INSERT INTO tramRouteSchedule VALUES (1, '16:58:00');
INSERT INTO tramRouteSchedule VALUES (1, '17:10:05');
INSERT INTO tramRouteSchedule VALUES (1, '17:22:10');
INSERT INTO tramRouteSchedule VALUES (1, '17:34:15');
INSERT INTO tramRouteSchedule VALUES (1, '17:46:20');
INSERT INTO tramRouteSchedule VALUES (1, '17:58:10');
INSERT INTO tramRouteSchedule VALUES (1, '18:10:30');
INSERT INTO tramRouteSchedule VALUES (1, '18:22:00');
INSERT INTO tramRouteSchedule VALUES (1, '18:33:22');
INSERT INTO tramRouteSchedule VALUES (1, '18:44:44');
INSERT INTO tramRouteSchedule VALUES (1, '18:56:06');
INSERT INTO tramRouteSchedule VALUES (1, '19:07:28');
INSERT INTO tramRouteSchedule VALUES (1, '19:24:00');
INSERT INTO tramRouteSchedule VALUES (1, '19:30:12');
INSERT INTO tramRouteSchedule VALUES (1, '19:44:05');
INSERT INTO tramRouteSchedule VALUES (1, '20:03:00');
INSERT INTO tramRouteSchedule VALUES (1, '20:21:40');
INSERT INTO tramRouteSchedule VALUES (1, '20:41:14');
INSERT INTO tramRouteSchedule VALUES (1, '21:01:00');
INSERT INTO tramRouteSchedule VALUES (1, '21:20:30');
INSERT INTO tramRouteSchedule VALUES (1, '21:38:52');
INSERT INTO tramRouteSchedule VALUES (1, '21:57:14');
INSERT INTO tramRouteSchedule VALUES (1, '22:15:36');
INSERT INTO tramRouteSchedule VALUES (1, '22:33:58');
INSERT INTO tramRouteSchedule VALUES (1, '22:52:20');
INSERT INTO tramRouteSchedule VALUES (1, '23:10:42');
INSERT INTO tramRouteSchedule VALUES (1, '23:29:04');
INSERT INTO tramRouteSchedule VALUES (1, '23:47:26');

INSERT INTO tramRouteSchedule VALUES (2, '04:00:00');
INSERT INTO tramRouteSchedule VALUES (2, '04:16:15');
INSERT INTO tramRouteSchedule VALUES (2, '04:31:40');
INSERT INTO tramRouteSchedule VALUES (2, '04:42:30');
INSERT INTO tramRouteSchedule VALUES (2, '04:57:45');
INSERT INTO tramRouteSchedule VALUES (2, '05:11:50');
INSERT INTO tramRouteSchedule VALUES (2, '05:25:35');
INSERT INTO tramRouteSchedule VALUES (2, '05:36:15');
INSERT INTO tramRouteSchedule VALUES (2, '05:37:00');
INSERT INTO tramRouteSchedule VALUES (2, '05:44:28');
INSERT INTO tramRouteSchedule VALUES (2, '05:53:22');
INSERT INTO tramRouteSchedule VALUES (2, '05:59:28');
INSERT INTO tramRouteSchedule VALUES (2, '06:08:00');
INSERT INTO tramRouteSchedule VALUES (2, '06:18:00');
INSERT INTO tramRouteSchedule VALUES (2, '06:19:20');
INSERT INTO tramRouteSchedule VALUES (2, '06:28:30');
INSERT INTO tramRouteSchedule VALUES (2, '06:36:20');
INSERT INTO tramRouteSchedule VALUES (2, '06:43:57');
INSERT INTO tramRouteSchedule VALUES (2, '06:52:00');
INSERT INTO tramRouteSchedule VALUES (2, '06:59:50');
INSERT INTO tramRouteSchedule VALUES (2, '07:08:05');
INSERT INTO tramRouteSchedule VALUES (2, '07:15:30');
INSERT INTO tramRouteSchedule VALUES (2, '07:23:20');
INSERT INTO tramRouteSchedule VALUES (2, '07:31:10');
INSERT INTO tramRouteSchedule VALUES (2, '07:39:00');
INSERT INTO tramRouteSchedule VALUES (2, '07:46:50');
INSERT INTO tramRouteSchedule VALUES (2, '07:54:40');
INSERT INTO tramRouteSchedule VALUES (2, '08:02:30');
INSERT INTO tramRouteSchedule VALUES (2, '08:10:20');
INSERT INTO tramRouteSchedule VALUES (2, '08:18:10');
INSERT INTO tramRouteSchedule VALUES (2, '08:26:00');
INSERT INTO tramRouteSchedule VALUES (2, '08:34:50');
INSERT INTO tramRouteSchedule VALUES (2, '08:43:40');
INSERT INTO tramRouteSchedule VALUES (2, '08:53:30');
INSERT INTO tramRouteSchedule VALUES (2, '09:03:00');
INSERT INTO tramRouteSchedule VALUES (2, '09:05:00');
INSERT INTO tramRouteSchedule VALUES (2, '09:13:00');
INSERT INTO tramRouteSchedule VALUES (2, '09:21:40');
INSERT INTO tramRouteSchedule VALUES (2, '09:30:55');
INSERT INTO tramRouteSchedule VALUES (2, '09:39:30');
INSERT INTO tramRouteSchedule VALUES (2, '09:49:20');
INSERT INTO tramRouteSchedule VALUES (2, '09:58:04');
INSERT INTO tramRouteSchedule VALUES (2, '10:06:53');
INSERT INTO tramRouteSchedule VALUES (2, '10:15:42');
INSERT INTO tramRouteSchedule VALUES (2, '10:24:31');
INSERT INTO tramRouteSchedule VALUES (2, '10:33:20');
INSERT INTO tramRouteSchedule VALUES (2, '10:42:09');
INSERT INTO tramRouteSchedule VALUES (2, '10:50:58');
INSERT INTO tramRouteSchedule VALUES (2, '10:59:47');
INSERT INTO tramRouteSchedule VALUES (2, '11:08:36');
INSERT INTO tramRouteSchedule VALUES (2, '11:17:25');
INSERT INTO tramRouteSchedule VALUES (2, '11:26:14');
INSERT INTO tramRouteSchedule VALUES (2, '11:35:03');
INSERT INTO tramRouteSchedule VALUES (2, '11:43:52');
INSERT INTO tramRouteSchedule VALUES (2, '11:52:41');
INSERT INTO tramRouteSchedule VALUES (2, '12:01:30');
INSERT INTO tramRouteSchedule VALUES (2, '12:10:19');
INSERT INTO tramRouteSchedule VALUES (2, '12:19:08');
INSERT INTO tramRouteSchedule VALUES (2, '12:27:57');
INSERT INTO tramRouteSchedule VALUES (2, '12:36:46');
INSERT INTO tramRouteSchedule VALUES (2, '12:45:35');
INSERT INTO tramRouteSchedule VALUES (2, '12:54:24');
INSERT INTO tramRouteSchedule VALUES (2, '13:03:30');
INSERT INTO tramRouteSchedule VALUES (2, '13:13:30');
INSERT INTO tramRouteSchedule VALUES (2, '13:23:05');
INSERT INTO tramRouteSchedule VALUES (2, '13:30:45');
INSERT INTO tramRouteSchedule VALUES (2, '13:33:20');
INSERT INTO tramRouteSchedule VALUES (2, '13:43:05');
INSERT INTO tramRouteSchedule VALUES (2, '13:52:45');
INSERT INTO tramRouteSchedule VALUES (2, '14:01:25');
INSERT INTO tramRouteSchedule VALUES (2, '14:09:05');
INSERT INTO tramRouteSchedule VALUES (2, '14:16:45');
INSERT INTO tramRouteSchedule VALUES (2, '14:24:25');
INSERT INTO tramRouteSchedule VALUES (2, '14:32:05');
INSERT INTO tramRouteSchedule VALUES (2, '14:39:45');
INSERT INTO tramRouteSchedule VALUES (2, '14:47:25');
INSERT INTO tramRouteSchedule VALUES (2, '14:55:05');
INSERT INTO tramRouteSchedule VALUES (2, '15:02:45');
INSERT INTO tramRouteSchedule VALUES (2, '15:10:25');
INSERT INTO tramRouteSchedule VALUES (2, '15:18:05');
INSERT INTO tramRouteSchedule VALUES (2, '15:25:45');
INSERT INTO tramRouteSchedule VALUES (2, '15:33:25');
INSERT INTO tramRouteSchedule VALUES (2, '15:41:05');
INSERT INTO tramRouteSchedule VALUES (2, '15:48:45');
INSERT INTO tramRouteSchedule VALUES (2, '15:56:25');
INSERT INTO tramRouteSchedule VALUES (2, '16:04:05');
INSERT INTO tramRouteSchedule VALUES (2, '16:11:45');
INSERT INTO tramRouteSchedule VALUES (2, '16:19:25');
INSERT INTO tramRouteSchedule VALUES (2, '16:27:05');
INSERT INTO tramRouteSchedule VALUES (2, '16:34:45');
INSERT INTO tramRouteSchedule VALUES (2, '16:42:25');
INSERT INTO tramRouteSchedule VALUES (2, '16:50:05');
INSERT INTO tramRouteSchedule VALUES (2, '16:57:45');
INSERT INTO tramRouteSchedule VALUES (2, '17:05:25');
INSERT INTO tramRouteSchedule VALUES (2, '17:13:05');
INSERT INTO tramRouteSchedule VALUES (2, '17:20:45');
INSERT INTO tramRouteSchedule VALUES (2, '17:28:25');
INSERT INTO tramRouteSchedule VALUES (2, '17:36:05');
INSERT INTO tramRouteSchedule VALUES (2, '17:43:45');
INSERT INTO tramRouteSchedule VALUES (2, '17:52:17');
INSERT INTO tramRouteSchedule VALUES (2, '17:59:35');
INSERT INTO tramRouteSchedule VALUES (2, '18:06:37');
INSERT INTO tramRouteSchedule VALUES (2, '18:16:35');
INSERT INTO tramRouteSchedule VALUES (2, '18:23:05');
INSERT INTO tramRouteSchedule VALUES (2, '18:30:30');
INSERT INTO tramRouteSchedule VALUES (2, '18:37:20');
INSERT INTO tramRouteSchedule VALUES (2, '18:44:57');
INSERT INTO tramRouteSchedule VALUES (2, '18:56:35');
INSERT INTO tramRouteSchedule VALUES (2, '19:01:35');
INSERT INTO tramRouteSchedule VALUES (2, '19:09:35');
INSERT INTO tramRouteSchedule VALUES (2, '19:15:35');
INSERT INTO tramRouteSchedule VALUES (2, '19:23:19');
INSERT INTO tramRouteSchedule VALUES (2, '19:30:35');
INSERT INTO tramRouteSchedule VALUES (2, '19:37:35');
INSERT INTO tramRouteSchedule VALUES (2, '19:52:08');
INSERT INTO tramRouteSchedule VALUES (2, '20:04:29');
INSERT INTO tramRouteSchedule VALUES (2, '20:17:14');
INSERT INTO tramRouteSchedule VALUES (2, '20:30:51');
INSERT INTO tramRouteSchedule VALUES (2, '20:42:14');
INSERT INTO tramRouteSchedule VALUES (2, '20:55:14');
INSERT INTO tramRouteSchedule VALUES (2, '21:09:24');
INSERT INTO tramRouteSchedule VALUES (2, '21:23:50');
INSERT INTO tramRouteSchedule VALUES (2, '21:37:44');
INSERT INTO tramRouteSchedule VALUES (2, '21:50:24');
INSERT INTO tramRouteSchedule VALUES (2, '22:03:04');
INSERT INTO tramRouteSchedule VALUES (2, '22:15:44');
INSERT INTO tramRouteSchedule VALUES (2, '22:28:24');
INSERT INTO tramRouteSchedule VALUES (2, '22:41:04');
INSERT INTO tramRouteSchedule VALUES (2, '22:53:44');
INSERT INTO tramRouteSchedule VALUES (2, '23:06:24');
INSERT INTO tramRouteSchedule VALUES (2, '23:20:04');
INSERT INTO tramRouteSchedule VALUES (2, '23:31:44');
INSERT INTO tramRouteSchedule VALUES (2, '23:44:24');
INSERT INTO tramRouteSchedule VALUES (2, '23:57:04');
INSERT INTO tramRouteSchedule VALUES (2, '00:09:44');
INSERT INTO tramRouteSchedule VALUES (2, '00:22:24');


INSERT INTO tramRouteSchedule VALUES (3, '04:03:55');
INSERT INTO tramRouteSchedule VALUES (3, '04:19:55');
INSERT INTO tramRouteSchedule VALUES (3, '04:35:15');
INSERT INTO tramRouteSchedule VALUES (3, '04:50:55');
INSERT INTO tramRouteSchedule VALUES (3, '05:06:59');
INSERT INTO tramRouteSchedule VALUES (3, '05:22:15');
INSERT INTO tramRouteSchedule VALUES (3, '05:37:55');
INSERT INTO tramRouteSchedule VALUES (3, '05:49:00');
INSERT INTO tramRouteSchedule VALUES (3, '06:00:00');
INSERT INTO tramRouteSchedule VALUES (3, '06:13:00');
INSERT INTO tramRouteSchedule VALUES (3, '06:25:30');
INSERT INTO tramRouteSchedule VALUES (3, '06:37:00');
INSERT INTO tramRouteSchedule VALUES (3, '06:48:59');
INSERT INTO tramRouteSchedule VALUES (3, '07:01:21');
INSERT INTO tramRouteSchedule VALUES (3, '07:14:01');
INSERT INTO tramRouteSchedule VALUES (3, '07:27:18');
INSERT INTO tramRouteSchedule VALUES (3, '07:39:40');
INSERT INTO tramRouteSchedule VALUES (3, '07:52:02');
INSERT INTO tramRouteSchedule VALUES (3, '08:04:24');
INSERT INTO tramRouteSchedule VALUES (3, '08:16:46');
INSERT INTO tramRouteSchedule VALUES (3, '08:29:08');
INSERT INTO tramRouteSchedule VALUES (3, '08:43:00');
INSERT INTO tramRouteSchedule VALUES (3, '08:56:22');
INSERT INTO tramRouteSchedule VALUES (3, '09:09:44');
INSERT INTO tramRouteSchedule VALUES (3, '09:24:06');
INSERT INTO tramRouteSchedule VALUES (3, '09:38:00');
INSERT INTO tramRouteSchedule VALUES (3, '09:52:00');
INSERT INTO tramRouteSchedule VALUES (3, '10:06:54');
INSERT INTO tramRouteSchedule VALUES (3, '10:20:44');
INSERT INTO tramRouteSchedule VALUES (3, '10:34:34');
INSERT INTO tramRouteSchedule VALUES (3, '10:48:24');
INSERT INTO tramRouteSchedule VALUES (3, '11:02:14');
INSERT INTO tramRouteSchedule VALUES (3, '11:16:04');
INSERT INTO tramRouteSchedule VALUES (3, '11:29:54');
INSERT INTO tramRouteSchedule VALUES (3, '11:43:44');
INSERT INTO tramRouteSchedule VALUES (3, '11:57:34');
INSERT INTO tramRouteSchedule VALUES (3, '12:11:24');
INSERT INTO tramRouteSchedule VALUES (3, '12:25:14');
INSERT INTO tramRouteSchedule VALUES (3, '12:39:04');
INSERT INTO tramRouteSchedule VALUES (3, '12:52:54');
INSERT INTO tramRouteSchedule VALUES (3, '13:06:35');
INSERT INTO tramRouteSchedule VALUES (3, '13:18:41');
INSERT INTO tramRouteSchedule VALUES (3, '13:31:12');
INSERT INTO tramRouteSchedule VALUES (3, '13:43:28');
INSERT INTO tramRouteSchedule VALUES (3, '13:55:44');
INSERT INTO tramRouteSchedule VALUES (3, '14:08:00');
INSERT INTO tramRouteSchedule VALUES (3, '14:20:16');
INSERT INTO tramRouteSchedule VALUES (3, '14:32:32');
INSERT INTO tramRouteSchedule VALUES (3, '14:44:48');
INSERT INTO tramRouteSchedule VALUES (3, '14:57:04');
INSERT INTO tramRouteSchedule VALUES (3, '15:09:20');
INSERT INTO tramRouteSchedule VALUES (3, '15:21:36');
INSERT INTO tramRouteSchedule VALUES (3, '15:33:52');
INSERT INTO tramRouteSchedule VALUES (3, '15:46:08');
INSERT INTO tramRouteSchedule VALUES (3, '15:58:24');
INSERT INTO tramRouteSchedule VALUES (3, '16:10:40');
INSERT INTO tramRouteSchedule VALUES (3, '16:22:56');
INSERT INTO tramRouteSchedule VALUES (3, '16:35:12');
INSERT INTO tramRouteSchedule VALUES (3, '16:47:28');
INSERT INTO tramRouteSchedule VALUES (3, '16:59:44');
INSERT INTO tramRouteSchedule VALUES (3, '17:12:00');
INSERT INTO tramRouteSchedule VALUES (3, '17:24:16');
INSERT INTO tramRouteSchedule VALUES (3, '17:36:32');
INSERT INTO tramRouteSchedule VALUES (3, '17:50:48');
INSERT INTO tramRouteSchedule VALUES (3, '18:05:04');
INSERT INTO tramRouteSchedule VALUES (3, '18:21:28');
INSERT INTO tramRouteSchedule VALUES (3, '18:37:00');
INSERT INTO tramRouteSchedule VALUES (3, '18:55:00');
INSERT INTO tramRouteSchedule VALUES (3, '19:13:56');
INSERT INTO tramRouteSchedule VALUES (3, '19:30:00');
INSERT INTO tramRouteSchedule VALUES (3, '19:46:08');
INSERT INTO tramRouteSchedule VALUES (3, '20:02:16');
INSERT INTO tramRouteSchedule VALUES (3, '20:18:24');
INSERT INTO tramRouteSchedule VALUES (3, '20:34:32');
INSERT INTO tramRouteSchedule VALUES (3, '20:50:40');
INSERT INTO tramRouteSchedule VALUES (3, '21:06:48');
INSERT INTO tramRouteSchedule VALUES (3, '21:23:19');
INSERT INTO tramRouteSchedule VALUES (3, '21:38:59');
INSERT INTO tramRouteSchedule VALUES (3, '21:54:39');
INSERT INTO tramRouteSchedule VALUES (3, '22:10:19');
INSERT INTO tramRouteSchedule VALUES (3, '22:25:59');
INSERT INTO tramRouteSchedule VALUES (3, '22:41:39');
INSERT INTO tramRouteSchedule VALUES (3, '22:57:19');
INSERT INTO tramRouteSchedule VALUES (3, '23:13:29');
INSERT INTO tramRouteSchedule VALUES (3, '23:30:00');