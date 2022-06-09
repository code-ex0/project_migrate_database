-- import to SQLite by running: sqlite3.exe db.sqlite3 -init sqlite.sql

PRAGMA journal_mode = MEMORY;
PRAGMA synchronous = OFF;
PRAGMA foreign_keys = OFF;
PRAGMA ignore_check_constraints = OFF;
PRAGMA auto_vacuum = NONE;
PRAGMA secure_delete = OFF;
BEGIN TRANSACTION;

#
# TABLE STRUCTURE FOR: coach
#
DROP TABLE IF EXISTS `coach`;

CREATE TABLE `coach` (
                         `idCoach` INTEGER NOT NULL ,
                         `lastname` tinytext  NOT NULL,
                         `firstname` tinytext  NOT NULL,
                         `gender` tinytext  NOT NULL,
                         `age` INTEGER NOT NULL,
                         `wage` INTEGER NOT NULL,
                         `licenseDate` tinytext  NOT NULL,
                         `IdGame` INTEGER DEFAULT NULL,
                         PRIMARY KEY (`idCoach`),
                         FOREIGN KEY (`IdGame`) REFERENCES `game` (`idGame`)
);
INSERT INTO `coach` (`idCoach`, `lastname`, `firstname`, `gender`, `age`, `wage`, `licenseDate`, `IdGame`) VALUES (1, 'Emard', 'Salma', 'Mrs.', 52, 17590, '2008-01-05', 9);
INSERT INTO `coach` (`idCoach`, `lastname`, `firstname`, `gender`, `age`, `wage`, `licenseDate`, `IdGame`) VALUES (2, 'Gulgowski', 'Sid', 'Ms.', 50, 12947, '1998-01-17', 9);
INSERT INTO `coach` (`idCoach`, `lastname`, `firstname`, `gender`, `age`, `wage`, `licenseDate`, `IdGame`) VALUES (3, 'Ortiz', 'Constantin', 'Ms.', 73, 5795, '1983-07-31', 3);
INSERT INTO `coach` (`idCoach`, `lastname`, `firstname`, `gender`, `age`, `wage`, `licenseDate`, `IdGame`) VALUES (4, 'Auer', 'Jimmie', 'Miss', 72, 9894, '1974-10-19', 1);
INSERT INTO `coach` (`idCoach`, `lastname`, `firstname`, `gender`, `age`, `wage`, `licenseDate`, `IdGame`) VALUES (5, 'Rowe', 'Aisha', 'Dr.', 55, 6704, '1979-12-14', 10);
INSERT INTO `coach` (`idCoach`, `lastname`, `firstname`, `gender`, `age`, `wage`, `licenseDate`, `IdGame`) VALUES (6, 'Mosciski', 'Corene', 'Miss', 67, 18186, '1989-10-03', 3);
INSERT INTO `coach` (`idCoach`, `lastname`, `firstname`, `gender`, `age`, `wage`, `licenseDate`, `IdGame`) VALUES (7, 'Boyle', 'Luigi', 'Ms.', 53, 8512, '1990-08-27', 2);
INSERT INTO `coach` (`idCoach`, `lastname`, `firstname`, `gender`, `age`, `wage`, `licenseDate`, `IdGame`) VALUES (8, 'Luettgen', 'Monty', 'Mrs.', 71, 10229, '2021-08-24', 10);
INSERT INTO `coach` (`idCoach`, `lastname`, `firstname`, `gender`, `age`, `wage`, `licenseDate`, `IdGame`) VALUES (9, 'Considine', 'Austin', 'Dr.', 51, 5943, '2020-10-20', 8);
INSERT INTO `coach` (`idCoach`, `lastname`, `firstname`, `gender`, `age`, `wage`, `licenseDate`, `IdGame`) VALUES (10, 'Toy', 'Cathrine', 'Prof.', 61, 6182, '2007-02-01', 6);
INSERT INTO `coach` (`idCoach`, `lastname`, `firstname`, `gender`, `age`, `wage`, `licenseDate`, `IdGame`) VALUES (11, 'Rempel', 'Kade', 'Miss', 61, 5006, '1983-01-22', 2);
INSERT INTO `coach` (`idCoach`, `lastname`, `firstname`, `gender`, `age`, `wage`, `licenseDate`, `IdGame`) VALUES (12, 'Senger', 'Emerald', 'Prof.', 45, 7208, '2012-03-07', 7);
INSERT INTO `coach` (`idCoach`, `lastname`, `firstname`, `gender`, `age`, `wage`, `licenseDate`, `IdGame`) VALUES (13, 'Lynch', 'Shad', 'Dr.', 34, 7265, '1989-02-14', 8);
INSERT INTO `coach` (`idCoach`, `lastname`, `firstname`, `gender`, `age`, `wage`, `licenseDate`, `IdGame`) VALUES (14, 'Corwin', 'Frances', 'Dr.', 62, 14087, '1988-11-18', 1);
INSERT INTO `coach` (`idCoach`, `lastname`, `firstname`, `gender`, `age`, `wage`, `licenseDate`, `IdGame`) VALUES (15, 'Hahn', 'Connor', 'Mrs.', 74, 4450, '2003-04-16', 5);
INSERT INTO `coach` (`idCoach`, `lastname`, `firstname`, `gender`, `age`, `wage`, `licenseDate`, `IdGame`) VALUES (16, 'Abernathy', 'Virgie', 'Ms.', 58, 19116, '1995-11-06', 6);
INSERT INTO `coach` (`idCoach`, `lastname`, `firstname`, `gender`, `age`, `wage`, `licenseDate`, `IdGame`) VALUES (17, 'Stanton', 'Maiya', 'Mrs.', 36, 13807, '2001-08-03', 1);
INSERT INTO `coach` (`idCoach`, `lastname`, `firstname`, `gender`, `age`, `wage`, `licenseDate`, `IdGame`) VALUES (18, 'Harber', 'Lempi', 'Mr.', 30, 11712, '1979-08-11', 3);
INSERT INTO `coach` (`idCoach`, `lastname`, `firstname`, `gender`, `age`, `wage`, `licenseDate`, `IdGame`) VALUES (19, 'Wyman', 'Ethyl', 'Mr.', 66, 10187, '1973-05-27', 4);
INSERT INTO `coach` (`idCoach`, `lastname`, `firstname`, `gender`, `age`, `wage`, `licenseDate`, `IdGame`) VALUES (20, 'Torphy', 'Reece', 'Miss', 65, 5958, '1982-02-01', 6);
#
# TABLE STRUCTURE FOR: game
#
DROP TABLE IF EXISTS `game`;

CREATE TABLE `game` (
                        `idGame` INTEGER NOT NULL ,
                        `name` tinytext  NOT NULL,
                        PRIMARY KEY (`idGame`)
);
INSERT INTO `game` (`idGame`, `name`) VALUES (1, 'tempore');
INSERT INTO `game` (`idGame`, `name`) VALUES (2, 'ex');
INSERT INTO `game` (`idGame`, `name`) VALUES (3, 'adipisci');
INSERT INTO `game` (`idGame`, `name`) VALUES (4, 'qui');
INSERT INTO `game` (`idGame`, `name`) VALUES (5, 'et');
INSERT INTO `game` (`idGame`, `name`) VALUES (6, 'blanditiis');
INSERT INTO `game` (`idGame`, `name`) VALUES (7, 'harum');
INSERT INTO `game` (`idGame`, `name`) VALUES (8, 'aliquam');
INSERT INTO `game` (`idGame`, `name`) VALUES (9, 'cumque');
INSERT INTO `game` (`idGame`, `name`) VALUES (10, 'rem');
#
# TABLE STRUCTURE FOR: player
#
DROP TABLE IF EXISTS `player`;

CREATE TABLE `player` (
                          `idPLayer` INTEGER NOT NULL ,
                          `lastname` tinytext  NOT NULL,
                          `firstname` tinytext  NOT NULL,
                          `gender` tinytext  NOT NULL,
                          `age` INTEGER NOT NULL,
                          `wage` INTEGER NOT NULL,
                          `ranking` INTEGER NOT NULL,
                          `IdGame` INTEGER DEFAULT NULL,
                          PRIMARY KEY (`idPLayer`),
                          FOREIGN KEY (`IdGame`) REFERENCES `game` (`idGame`)
);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (1, 'Luettgen', 'Jayden', 'Dr.', 44666, 138711268, 5, 1);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (2, 'Simonis', 'Lesley', 'Miss', 0, 87472117, 7, 7);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (3, 'O''Conner', 'Lenore', 'Prof.', 7924, 62690, 9, 6);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (4, 'Batz', 'Magnus', 'Mrs.', 8689, 9027490, 4, 10);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (5, 'Feeney', 'Calista', 'Dr.', 534035, 25, 3, 4);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (6, 'Schimmel', 'Chester', 'Dr.', 2081, 71790742, 2, 4);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (7, 'Krajcik', 'Dena', 'Mrs.', 1138890, 339591044, 5, 4);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (8, 'Cormier', 'Heloise', 'Mr.', 93, 723, 9, 9);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (9, 'Kuhlman', 'Emil', 'Mr.', 355422, 2103, 5, 6);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (10, 'Kassulke', 'Jerrell', 'Dr.', 546153332, 772, 3, 3);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (11, 'Rippin', 'Anderson', 'Dr.', 8750, 3, 1, 5);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (12, 'Kovacek', 'Ellsworth', 'Mr.', 6, 326484506, 2, 5);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (13, 'Reichel', 'Ashley', 'Prof.', 25353, 0, 6, 10);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (14, 'Hermiston', 'Arne', 'Dr.', 59812, 12, 2, 1);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (15, 'Koss', 'Orval', 'Dr.', 229, 12, 5, 5);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (16, 'Stark', 'Abdullah', 'Dr.', 492474, 62941, 7, 1);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (17, 'Herzog', 'Carli', 'Prof.', 184, 867, 7, 6);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (18, 'Harber', 'Lila', 'Miss', 98, 269, 2, 5);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (19, 'White', 'Cory', 'Ms.', 0, 301, 9, 3);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (20, 'Towne', 'Jensen', 'Miss', 684, 3, 4, 6);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (21, 'Emard', 'Judge', 'Dr.', 93013, 836616678, 5, 6);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (22, 'Schroeder', 'Eudora', 'Mrs.', 6931, 0, 2, 5);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (23, 'Murphy', 'Angie', 'Ms.', 901, 3, 6, 9);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (24, 'Hessel', 'Vivienne', 'Dr.', 1258918, 22, 7, 8);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (25, 'Halvorson', 'Jesus', 'Dr.', 88690, 8639724, 2, 5);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (26, 'Kunde', 'Lora', 'Prof.', 0, 191862, 6, 8);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (27, 'Champlin', 'Geovany', 'Prof.', 84543936, 9467521, 2, 10);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (28, 'Fahey', 'Dakota', 'Mr.', 101, 3156222, 7, 3);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (29, 'Rempel', 'Destiny', 'Prof.', 37, 38577, 3, 8);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (30, 'Koss', 'Shaniya', 'Prof.', 7615, 955207610, 2, 6);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (31, 'Kling', 'Natalia', 'Ms.', 5302, 0, 2, 1);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (32, 'Purdy', 'Josue', 'Prof.', 576367, 30, 1, 8);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (33, 'Ward', 'Fay', 'Miss', 97, 1791941, 6, 3);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (34, 'Fahey', 'Junior', 'Dr.', 2, 7, 1, 6);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (35, 'Cruickshank', 'Elyse', 'Mr.', 6566, 83105, 9, 7);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (36, 'Crona', 'Sandy', 'Prof.', 35036, 96126268, 3, 6);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (37, 'Buckridge', 'Cristina', 'Dr.', 5576, 93882, 5, 10);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (38, 'Hartmann', 'Reilly', 'Mrs.', 7, 2955093, 7, 10);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (39, 'West', 'Emma', 'Dr.', 7462753, 51, 7, 4);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (40, 'Kuvalis', 'Rosella', 'Mr.', 9268, 0, 5, 6);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (41, 'Tillman', 'Laurence', 'Prof.', 25374, 99944, 5, 3);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (42, 'Collins', 'Gillian', 'Dr.', 8474, 48624, 5, 8);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (43, 'Rempel', 'Zane', 'Prof.', 68, 9, 4, 10);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (44, 'Ondricka', 'Jordon', 'Mrs.', 49, 45119020, 1, 2);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (45, 'Greenfelder', 'Javier', 'Dr.', 58169852, 0, 8, 9);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (46, 'Mante', 'Celia', 'Prof.', 0, 321428, 4, 5);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (47, 'Gerlach', 'Triston', 'Prof.', 37591, 31, 8, 2);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (48, 'O''Conner', 'Tevin', 'Prof.', 126739, 276, 7, 5);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (49, 'Abshire', 'Raoul', 'Dr.', 4599805, 498509797, 7, 9);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (50, 'Effertz', 'Jeanne', 'Prof.', 11, 38468, 1, 5);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (51, 'Dare', 'Barry', 'Ms.', 8749, 133, 3, 1);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (52, 'Wehner', 'Zoie', 'Prof.', 4427522, 3000124, 5, 5);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (53, 'Kub', 'Osvaldo', 'Dr.', 52569, 0, 4, 10);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (54, 'Gislason', 'Brent', 'Mrs.', 900079, 74637043, 1, 9);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (55, 'Cartwright', 'Haley', 'Dr.', 35, 86, 7, 2);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (56, 'Labadie', 'Rhoda', 'Prof.', 88158404, 4528, 2, 4);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (57, 'Altenwerth', 'Heber', 'Prof.', 11658, 0, 6, 7);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (58, 'Moen', 'Cullen', 'Prof.', 0, 18, 1, 2);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (59, 'Runte', 'Scottie', 'Mrs.', 320786, 0, 5, 7);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (60, 'Breitenberg', 'Felicia', 'Prof.', 4974059, 3785111, 3, 4);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (61, 'Hirthe', 'Consuelo', 'Dr.', 2, 77712, 1, 7);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (62, 'Mohr', 'Genevieve', 'Dr.', 3588, 99844205, 6, 7);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (63, 'Jones', 'Marie', 'Prof.', 5393944, 951739, 5, 2);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (64, 'Greenfelder', 'Alexandrine', 'Dr.', 70182, 0, 6, 9);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (65, 'Miller', 'Antonio', 'Dr.', 15, 6157885, 5, 3);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (66, 'Sawayn', 'Dayton', 'Mrs.', 523207, 46395, 1, 9);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (67, 'Jenkins', 'Alisa', 'Dr.', 1695487, 1376811, 2, 4);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (68, 'Shields', 'Zachary', 'Prof.', 95, 698956, 7, 3);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (69, 'Bednar', 'Fred', 'Mrs.', 6859060, 5, 1, 9);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (70, 'Schulist', 'Josh', 'Mr.', 33, 4854, 6, 8);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (71, 'Orn', 'Montana', 'Dr.', 939, 40146760, 8, 8);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (72, 'Tromp', 'Priscilla', 'Dr.', 985, 0, 5, 1);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (73, 'Bruen', 'Amos', 'Dr.', 31399665, 2085, 3, 6);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (74, 'Jacobson', 'Madonna', 'Ms.', 6, 926681654, 2, 8);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (75, 'Stokes', 'Kory', 'Miss', 195497, 1552, 2, 3);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (76, 'Ruecker', 'Angelo', 'Dr.', 1, 419722915, 6, 5);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (77, 'Grady', 'Olen', 'Mrs.', 39696, 3423, 4, 2);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (78, 'Lebsack', 'Niko', 'Dr.', 583769455, 39, 8, 5);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (79, 'Osinski', 'Jessyca', 'Dr.', 567050, 362689527, 9, 10);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (80, 'Halvorson', 'Brannon', 'Dr.', 3, 970, 1, 10);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (81, 'Lowe', 'Alexandra', 'Dr.', 0, 22302, 9, 9);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (82, 'Blanda', 'Dianna', 'Mr.', 4800111, 4, 3, 10);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (83, 'Stanton', 'Osborne', 'Prof.', 94592246, 942468154, 9, 5);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (84, 'DuBuque', 'Danika', 'Mr.', 0, 2590208, 7, 8);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (85, 'Orn', 'Lera', 'Dr.', 552, 98078, 1, 8);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (86, 'Monahan', 'Royce', 'Ms.', 854, 583972, 8, 7);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (87, 'Wiegand', 'Allison', 'Dr.', 34985599, 51291938, 5, 1);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (88, 'Turcotte', 'Sofia', 'Ms.', 339833221, 202, 4, 5);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (89, 'Volkman', 'Margaret', 'Mr.', 6846454, 22, 4, 8);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (90, 'Hegmann', 'Genevieve', 'Ms.', 3, 3548, 3, 7);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (91, 'Weimann', 'Jimmy', 'Ms.', 8976244, 679649, 1, 9);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (92, 'Hamill', 'Ora', 'Prof.', 29, 2126, 7, 4);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (93, 'Barton', 'Melvina', 'Dr.', 916, 0, 3, 3);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (94, 'Christiansen', 'Leonor', 'Ms.', 706643, 73454283, 2, 10);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (95, 'Borer', 'Junior', 'Dr.', 529534714, 6, 7, 3);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (96, 'Harber', 'Ashly', 'Mr.', 47936, 98506, 8, 6);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (97, 'Feest', 'Zack', 'Dr.', 558621, 374095, 6, 9);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (98, 'Dicki', 'Darien', 'Dr.', 190546, 347, 3, 7);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (99, 'O''Kon', 'Timmy', 'Mr.', 69487706, 14434, 1, 8);
INSERT INTO `player` (`idPLayer`, `lastname`, `firstname`, `gender`, `age`, `wage`, `ranking`, `IdGame`) VALUES (100, 'Legros', 'Kyla', 'Prof.', 93498, 9543052, 1, 7);
#
# TABLE STRUCTURE FOR: staff
#
DROP TABLE IF EXISTS `staff`;

CREATE TABLE `staff` (
                         `idStaff` INTEGER NOT NULL ,
                         `lastname` tinytext  NOT NULL,
                         `firstname` tinytext  NOT NULL,
                         `gender` tinytext  NOT NULL,
                         `age` INTEGER NOT NULL,
                         `wage` INTEGER NOT NULL,
                         PRIMARY KEY (`idStaff`)
);
INSERT INTO `staff` (`idStaff`, `lastname`, `firstname`, `gender`, `age`, `wage`) VALUES (1, 'Kunze', 'Cullen', 'Prof.', 36, 2628);
INSERT INTO `staff` (`idStaff`, `lastname`, `firstname`, `gender`, `age`, `wage`) VALUES (2, 'O''Connell', 'Julia', 'Dr.', 24, 9165);
INSERT INTO `staff` (`idStaff`, `lastname`, `firstname`, `gender`, `age`, `wage`) VALUES (3, 'Herzog', 'Dax', 'Mr.', 39, 6066);
INSERT INTO `staff` (`idStaff`, `lastname`, `firstname`, `gender`, `age`, `wage`) VALUES (4, 'Rowe', 'Lucinda', 'Prof.', 18, 2434);
INSERT INTO `staff` (`idStaff`, `lastname`, `firstname`, `gender`, `age`, `wage`) VALUES (5, 'Wiza', 'Linnie', 'Mr.', 28, 8218);
INSERT INTO `staff` (`idStaff`, `lastname`, `firstname`, `gender`, `age`, `wage`) VALUES (6, 'Johns', 'Orin', 'Dr.', 35, 3335);
INSERT INTO `staff` (`idStaff`, `lastname`, `firstname`, `gender`, `age`, `wage`) VALUES (7, 'Mayer', 'Royal', 'Prof.', 20, 5101);
INSERT INTO `staff` (`idStaff`, `lastname`, `firstname`, `gender`, `age`, `wage`) VALUES (8, 'Mante', 'Price', 'Dr.', 35, 2622);
INSERT INTO `staff` (`idStaff`, `lastname`, `firstname`, `gender`, `age`, `wage`) VALUES (9, 'Runte', 'Domenic', 'Prof.', 22, 7003);
INSERT INTO `staff` (`idStaff`, `lastname`, `firstname`, `gender`, `age`, `wage`) VALUES (10, 'Bogan', 'Jaqueline', 'Dr.', 21, 4156);
#
# TABLE STRUCTURE FOR: tournament
#
DROP TABLE IF EXISTS `tournament`;

CREATE TABLE `tournament` (
                              `idTournament` INTEGER NOT NULL ,
                              `date` tinytext  NOT NULL,
                              `placeName` tinytext  NOT NULL,
                              `address` tinytext  NOT NULL,
                              `city` tinytext  NOT NULL,
                              `duration` INTEGER NOT NULL,
                              `IdGame` INTEGER DEFAULT NULL,
                              PRIMARY KEY (`idTournament`),
                              FOREIGN KEY (`IdGame`) REFERENCES `game` (`idGame`)
);
INSERT INTO `tournament` (`idTournament`, `date`, `placeName`, `address`, `city`, `duration`, `IdGame`) VALUES (1, '1977-08-27', 'ratione', '6438 Treutel Divide Apt. 254\nAlaynastad, AK 22371', 'East Aidan', 3, 6);
INSERT INTO `tournament` (`idTournament`, `date`, `placeName`, `address`, `city`, `duration`, `IdGame`) VALUES (2, '2016-11-26', 'dignissimos', '5174 Matteo Fork Suite 939\nWest Santa, FL 49397-8947', 'Goodwinshire', 1, 10);
INSERT INTO `tournament` (`idTournament`, `date`, `placeName`, `address`, `city`, `duration`, `IdGame`) VALUES (3, '1982-07-30', 'qui', '169 Muller Trafficway\nPort Nora, MO 56484-2433', 'Madalinefurt', 5, 5);
INSERT INTO `tournament` (`idTournament`, `date`, `placeName`, `address`, `city`, `duration`, `IdGame`) VALUES (4, '2003-07-15', 'nulla', '48130 Kuhic Route\nVicentabury, CA 88803', 'Walshfurt', 1, 4);
INSERT INTO `tournament` (`idTournament`, `date`, `placeName`, `address`, `city`, `duration`, `IdGame`) VALUES (5, '1992-02-08', 'sunt', '53100 Bruen Lodge Apt. 216\nYesseniabury, AL 53213-4866', 'Kiehntown', 2, 4);
INSERT INTO `tournament` (`idTournament`, `date`, `placeName`, `address`, `city`, `duration`, `IdGame`) VALUES (6, '1994-04-01', 'optio', '53371 Hagenes Junction\nPort Cordelia, MS 42776', 'Glovertown', 4, 4);
INSERT INTO `tournament` (`idTournament`, `date`, `placeName`, `address`, `city`, `duration`, `IdGame`) VALUES (7, '1993-09-10', 'voluptates', '338 Jonathan Points Apt. 857\nEast Reina, NJ 23281', 'Stewartburgh', 3, 5);
INSERT INTO `tournament` (`idTournament`, `date`, `placeName`, `address`, `city`, `duration`, `IdGame`) VALUES (8, '1998-12-18', 'voluptatem', '87586 Burnice Brooks\nLake Noblebury, ME 77191', 'Pearlport', 7, 4);
INSERT INTO `tournament` (`idTournament`, `date`, `placeName`, `address`, `city`, `duration`, `IdGame`) VALUES (9, '1974-07-04', 'id', '4188 Hailee Branch Suite 855\nLindville, IA 85982-0286', 'Dariusborough', 6, 7);
INSERT INTO `tournament` (`idTournament`, `date`, `placeName`, `address`, `city`, `duration`, `IdGame`) VALUES (10, '1989-12-13', 'fugiat', '4492 Kihn Rest\nEast Bridgetport, ND 94544', 'Lake Valerie', 7, 4);
INSERT INTO `tournament` (`idTournament`, `date`, `placeName`, `address`, `city`, `duration`, `IdGame`) VALUES (11, '2012-10-20', 'perferendis', '08784 Evangeline Garden\nMerlinborough, IA 93668', 'Port Lelandville', 1, 4);
INSERT INTO `tournament` (`idTournament`, `date`, `placeName`, `address`, `city`, `duration`, `IdGame`) VALUES (12, '1984-12-13', 'illo', '19607 Dedrick Mountains Suite 071\nNorth Laylachester, MA 46133', 'Tillmanville', 6, 10);
INSERT INTO `tournament` (`idTournament`, `date`, `placeName`, `address`, `city`, `duration`, `IdGame`) VALUES (13, '2020-04-17', 'consequatur', '08464 Lila Streets\nRogahnchester, AZ 78221', 'Danielmouth', 9, 7);
INSERT INTO `tournament` (`idTournament`, `date`, `placeName`, `address`, `city`, `duration`, `IdGame`) VALUES (14, '1978-10-12', 'consequatur', '94004 Stamm Pine Apt. 032\nWest Jabarifort, NY 19143', 'Myrtiefort', 7, 5);
INSERT INTO `tournament` (`idTournament`, `date`, `placeName`, `address`, `city`, `duration`, `IdGame`) VALUES (15, '1988-08-25', 'tempore', '025 Kirlin Trail Apt. 931\nNorth Fredericborough, UT 88569-0632', 'Port Rosemaryfurt', 4, 1);
INSERT INTO `tournament` (`idTournament`, `date`, `placeName`, `address`, `city`, `duration`, `IdGame`) VALUES (16, '1977-04-06', 'sunt', '8145 Laura Wells\nAmaniton, MT 04284', 'Port Stone', 7, 3);
INSERT INTO `tournament` (`idTournament`, `date`, `placeName`, `address`, `city`, `duration`, `IdGame`) VALUES (17, '2004-12-01', 'quasi', '6903 Fahey Burg Apt. 121\nLake Cory, TX 79880-9348', 'Wendellview', 2, 10);
INSERT INTO `tournament` (`idTournament`, `date`, `placeName`, `address`, `city`, `duration`, `IdGame`) VALUES (18, '2015-02-25', 'voluptatem', '0468 Kautzer Knolls Apt. 847\nOkunevamouth, AL 45787-0064', 'Gutmannfurt', 6, 10);
INSERT INTO `tournament` (`idTournament`, `date`, `placeName`, `address`, `city`, `duration`, `IdGame`) VALUES (19, '1995-04-05', 'consequuntur', '02074 Hamill Isle\nBrakusport, WY 85262-6328', 'East Karolann', 1, 4);
INSERT INTO `tournament` (`idTournament`, `date`, `placeName`, `address`, `city`, `duration`, `IdGame`) VALUES (20, '1999-01-09', 'consequuntur', '0715 Tillman Center Apt. 043\nVivianefurt, HI 04673-7809', 'New Addie', 1, 4);



CREATE INDEX `coach_IdGame` ON `coach` (`IdGame`);
CREATE INDEX `player_IdGame` ON `player` (`IdGame`);
CREATE INDEX `tournament_IdGame` ON `tournament` (`IdGame`);

COMMIT;
PRAGMA ignore_check_constraints = ON;
PRAGMA foreign_keys = ON;
PRAGMA journal_mode = WAL;
PRAGMA synchronous = NORMAL;
