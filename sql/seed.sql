--create dummy students
INSERT INTO
students (student_id, first_name, last_name, age, sponsorship, grades_id, money, student_photo)
VALUES
(1,'Wells','Esby',12,'partial',1,51.21,'http://turbophoto.com/Free-Stock-Images/Images/Child%20Girl%20Using%20Computer.jpg'),
(2,'Kristine','Camden',8,'full',2,62.93,'http://turbophoto.com/Free-Stock-Images/Images/Ancient%20Horse%20-%2027%20Years%20Old.jpg'),
(3,'Ansel','Brewett',8,'full',4,97.48,'http://turbophoto.com/Free-Stock-Images/Images/Autumn_Flowers_Kitty.jpg'),
(4,'Fanny','Sidebottom',8,'partial',2,73.28,'http://turbophoto.com/Free-Stock-Images/Images/Bird%20and%20Young.jpg'),
(5,'Kiel','Southcomb',9,'partial',5,57.74,'http://turbophoto.com/Free-Stock-Images/Images/Bird%20Flying.jpg'),
(6,'Bernadette','Yacobsohn',12,'partial',5,61.72,'http://turbophoto.com/Free-Stock-Images/Images/Black%20Cow.jpg'),
(7,'Niels','Blabie',13,'partial',6,47.37,'http://turbophoto.com/Free-Stock-Images/Images/Bird%20On%20Wire%20Fence.jpg'),
(8,'Kaitlin','Whifen',17,'partial',7,79.6,'http://turbophoto.com/Free-Stock-Images/Images/Canadian%20Goose.jpg'),
(9,'Westbrooke','Steabler',3,'partial',9,26.56,'http://turbophoto.com/Free-Stock-Images/Images/Blackbird%20coming%20in%20for%20a%20landing.jpg'),
(10,'Heall','Forstall',10,'full',1,18.27,'http://turbophoto.com/Free-Stock-Images/Images/Bird%20on%20Wire.jpg'),
(11,'Menard','Creelman',2,'full',3,83.52,'http://turbophoto.com/Free-Stock-Images/Images/Cow.jpg'),
(12,'Cassaundra','Sayre',4,'full',7,46.37,'http://turbophoto.com/Free-Stock-Images/Images/Cute%20Soft%20Puppy%20Dog.jpg'),
(13,'Kora','Dovidaitis',10,'full',8,3.12,'http://turbophoto.com/Free-Stock-Images/Images/Deer.jpg'),
(14,'Bibby','Kiezler',16,'full',4,29.93,'http://turbophoto.com/Free-Stock-Images/Images/Cute%20White%20Puppy.jpg'),
(15,'Beverlie','Altimas',3,'full',5,99.98,'http://turbophoto.com/Free-Stock-Images/Images/Echidna.jpg'),
(16,'Kendell','Nester',16,'partial',2,14.62,'http://turbophoto.com/Free-Stock-Images/Images/Elephant.jpg'),
(17,'Hanan','Behnecke',12,'partial',4,10.96,'http://turbophoto.com/Free-Stock-Images/Images/Elk%20on%20Hill.JPG'),
(18,'Honoria','Iacapucci',3,'partial',8,42.49,'http://turbophoto.com/Free-Stock-Images/Images/Dark%20Cat.jpg'),
(19,'Nestor','Daine',17,'full',9,27.49,'http://turbophoto.com/Free-Stock-Images/Images/Cute%20Green%20Tree%20Frog.jpg'),
(20,'Rosene','Kenward',11,'partial',4,97.26, 'http://turbophoto.com/Free-Stock-Images/Images/Cute%20Dogs%20Sleeping.jpg');

--create dummy sponsors
INSERT INTO sponsors
(sponsor_id, first_name, last_name, email, phone, money_donated, date_paid, date_deposited, photo, link_id)
VALUES 
(1, 'Lefty', 'Dulany', 'ldulany0@baidu.com', '839-496-7890', 2.30, '8/19/2018', '4/10/2019', 'http://turbophoto.com/Free-Stock-Images/Images/Cute%20Sleeping%20Bird.jpg', 1),
(2, 'Charity', 'Sleith', 'csleith1@networksolutions.com', '313-745-9419', 0.52, '7/26/2018', '11/5/2018', 'http://turbophoto.com/Free-Stock-Images/Images/Cows%20(1).jpg', 2),
(3, 'Milli', 'Gervaise', 'mgervaise2@independent.co.uk', '967-776-0008', 2.17, '11/1/2018', '3/21/2019', 'http://turbophoto.com/Free-Stock-Images/Images/Dark%20Lizard.jpg', 3),
(4, 'Tabbie', 'Densun', 'tdensun3@chicagotribune.com', '168-960-0285', 8.89, '3/6/2019', '8/21/2018', 'http://turbophoto.com/Free-Stock-Images/Images/Flowers%20(177).jpg', 4),
(5, 'Vinny', 'Bassil', 'vbassil4@ihg.com', '853-854-2379', 3.58, '12/17/2018', '6/3/2019', 'http://turbophoto.com/Free-Stock-Images/Images/Flowers%20(179).jpg', 5),
(6, 'Oralie', 'Chuck', 'ochuck5@prweb.com', '693-803-0646', 6.97, '5/6/2019', '8/25/2018', 'http://turbophoto.com/Free-Stock-Images/Images/Flowers%20(194).jpg', 6), 
(7, 'Perice', 'Hawkeswood', 'phawkeswood6@1688.com', '823-366-7010', 2.10, '9/16/2018', '8/6/2018', 'http://turbophoto.com/Free-Stock-Images/Images/Flowers%20(205).jpg', 7),
(8, 'Jaimie', 'Ferriman', 'jferriman7@salon.com', '410-987-3798', 6.24, '6/30/2018', '3/2/2019', 'http://turbophoto.com/Free-Stock-Images/Images/Flowers%20(216).jpg', 8), 
(9, 'Dall', 'Jansey', 'djansey8@exblog.jp', '684-938-2700', 1.26, '4/16/2019', '1/24/2019', 'http://turbophoto.com/Free-Stock-Images/Images/Flowers%20(208).jpg', 9), 
(10, 'Romeo', 'Dragge', 'rdragge9@dailymail.co.uk', '545-463-2419', 1.52, '10/11/2018', '4/28/2019', 'http://turbophoto.com/Free-Stock-Images/Images/Flowers%20(226).jpg', 10);

--create dummy users
INSERT INTO users
(password, first_name, last_name, email, phone, photo, user_type)
VALUES
('123', 'Liz', 'Aitken', 'liz_aitken@gmail.com', '555-555-5555', 'http://turbophoto.com/Free-Stock-Images/Images/Girl%20on%20Railing.jpg', 'admin'),
('123', 'Jack', 'Faulk', 'jack_faulk@gmail.com', '123-456-7890', 'http://turbophoto.com/Free-Stock-Images/Images/US%20Coast%20Guard.JPG', 'volunteer');

--create dummy families
INSERT INTO families
(family_id, name, size, location, church_affiliation)
VALUES 
(100,'MacCleod',20,'56168 Express Point','regular member'),
(99,'Hedingham',8,'063 Browning Alley','regular member'),
(98,'Lewisham',1,'66472 Dunning Road','regular member'),
(97,'Toolan',24,'41340 Old Gate Crossing','VBS'),
(96,'Purver',22,'81 Stoughton Hill','regular member'),
(95,'Marchment',12,'98365 Debs Place','regular member'),
(94,'Paton',1,'47 Portage Court','regular member'),
(93,'Cherrington',9,'2 Myrtle Terrace','regular member'),
(92,'Lorenzo',8,'8 Waywood Hill','VBS'),
(91,'McIlhone',5,'25978 Memorial Circle','VBS'),
(90,'Jordan',23,'72327 Eastlawn Lane','regular member'),
(89,'Daw',23,'7665 Arizona Circle','VBS'),
(88,'Churchouse',17,'98 Evergreen Circle','regular member'),
(87,'Payler',18,'3799 Holy Cross Way','VBS'),
(86,'Erickson',13,'27679 Ridge Oak Way','regular member'),
(85,'Cattermole',12,'98 Straubel Court','VBS'),
(84,'McGillivrie',14,'77 Debra Hill','VBS'),
(83,'Goldstein',11,'6 Superior Terrace','regular member'),
(82,'Driver',10,'58 Summit Circle','regular member'),
(81,'Chance',12,'8743 Weeping Birch Parkway','VBS'),
(80,'Mailes',25,'48 Miller Junction','regular member'),
(79,'McCloud',12,'1 Almo Avenue','VBS'),
(78,'Coult',18,'54 Vidon Plaza','regular member'),
(77,'Barraclough',4,'1066 School Drive','VBS'),
(76,'Gamlyn',25,'7153 Maple Court','regular member'),
(75,'Portingale',17,'0794 Red Cloud Lane','regular member'),
(74,'Le Grove',23,'0310 Marcy Trail','VBS'),
(73,'Keeltagh',9,'4 Stang Park','regular member'),
(72,'Wetheril',18,'85 Bonner Court','regular member'),
(71,'Thynne',5,'2 Hansons Park','regular member'),
(70,'Conen',5,'81324 Kingsford Trail','VBS'),
(69,'Micklewicz',11,'736 Tony Drive','regular member'),
(68,'Willavize',21,'04708 Loomis Crossing','regular member'),
(67,'Urian',4,'49 Ridgeway Court','VBS'),
(66,'Adess',5,'0 Sommers Park','regular member'),
(65,'Bemlott',3,'9465 Sunfield Park','VBS'),
(64,'Rickhuss',14,'4 Kipling Parkway','regular member'),
(63,'Tockell',5,'2332 Sherman Center','regular member'),
(62,'Luc',9,'24 Johnson Street','VBS'),
(61,'Golde',12,'2 Summit Street','regular member'),
(60,'Paddy',21,'8 1st Terrace','regular member'),
(59,'Nazer',4,'484 La Follette Alley','regular member'),
(58,'Mayhou',25,'9 Fulton Terrace','regular member'),
(57,'Sedgmond',20,'12826 Ridgeway Avenue','VBS'),
(56,'Dimock',23,'626 Delaware Court','regular member'),
(55,'Cotte',4,'899 Coolidge Street','VBS'),
(54,'Mawman',10,'8 American Center','regular member'),
(53,'Kerbler',23,'6 Namekagon Park','VBS'),
(52,'Brugemann',11,'6 Jenna Crossing','VBS'),
(51,'Bilovsky',14,'3548 Columbus Park','VBS'),
(50,'Sherwell',18,'56 Merchant Street','VBS'),
(49,'Cope',18,'4157 Dunning Place','regular member'),
(48,'Drinkel',11,'302 Monterey Center','regular member'),
(47,'Rubinfeld',9,'0 Eagle Crest Center','regular member'),
(46,'Pooke',16,'868 Hoard Point','VBS'),
(45,'Hatherill',4,'6 Judy Hill','regular member'),
(44,'Cartin',15,'273 Victoria Alley','VBS'),
(43,'Hancell',18,'53779 Longview Avenue','VBS'),
(42,'Binne',16,'403 Bluestem Junction','regular member'),
(41,'Remnant',3,'552 Goodland Street','VBS'),
(40,'Normanvill',7,'2863 Meadow Vale Hill','regular member'),
(39,'Gane',23,'082 Loftsgordon Alley','regular member'),
(38,'Hanning',8,'1237 Thierer Way','regular member'),
(37,'Normanville',5,'02789 Twin Pines Plaza','regular member'),
(36,'Rennard',8,'0067 Holmberg Pass','VBS'),
(35,'Winger',21,'395 Kim Road','regular member'),
(34,'Hoyland',4,'2227 Wayridge Street','VBS'),
(33,'Skillington',22,'32602 Mcguire Circle','VBS'),
(32,'Vigar',13,'62615 Veith Place','VBS'),
(31,'Meric',4,'68273 Clove Avenue','regular member'),
(30,'Dusting',17,'4 Mifflin Street','VBS'),
(29,'Wilsone',21,'26 Kenwood Plaza','regular member'),
(28,'Phillimore',13,'50734 Schmedeman Circle','regular member'),
(27,'Sherme',13,'17899 Debra Crossing','regular member'),
(26,'Saurin',9,'05201 Sunbrook Alley','VBS'),
(25,'Gotling',18,'818 Meadow Vale Terrace','VBS'),
(24,'Keeney',25,'4587 Valley Edge Pass','regular member'),
(23,'Collard',16,'975 Jana Lane','regular member'),
(22,'McCormick',1,'69777 Jay Road','regular member'),
(21,'McKinstry',13,'686 Ryan Center','regular member'),
(20,'Pessold',9,'7119 Huxley Terrace','VBS'),
(19,'Saben',6,'98218 Lakewood Point','regular member'),
(18,'Tyrie',20,'65 Upham Point','VBS'),
(17,'Tring',10,'0 Badeau Street','VBS'),
(16,'Livzey',18,'19865 Ryan Road','VBS'),
(15,'Espinola',11,'4137 Clyde Gallagher Hill','regular member'),
(14,'Dury',8,'466 Anhalt Point','VBS'),
(13,'Turvey',24,'2 Union Alley','regular member'),
(12,'Brash',9,'06 Toban Place','regular member'),
(11,'Kitchiner',23,'20 Granby Trail','VBS'),
(10,'Rief',13,'8 Acker Point','regular member'),
(9,'Shipston',17,'4330 Vernon Circle','VBS'),
(8,'Alvarez',22,'64245 Ronald Regan Alley','regular member'),
(7,'Paal',8,'0864 Ramsey Court','VBS'),
(6,'Rown',10,'69180 Fremont Park','regular member'),
(5,'Toplin',20,'9 Kingsford Trail','regular member'),
(4,'Bunney',10,'29 Rieder Street','regular member'),
(3,'Everett',22,'8 Nobel Park','VBS'),
(2,'Heffernan',18,'236 Clarendon Terrace','VBS'),
(1,'Colicot',14,'9459 Schmedeman Street','regular member'),
(0, 'No Family', 0, 'Nowhere', 'None'); 


-- data for links table
INSERT INTO links
(link_id, students_id, stores_id, families_id, sponsors_id)
VALUES
(2, 1, 1, 1, 1), 
(3, 2, 2, 2, 2),
(4, 3, 3, 3, 3),
(5, 4, 4, 4, 4),
(6, 5, 1, 5, 1),
(7, 6, 2, 6, 2),
(8, 7, 3, 8, 3),
(9, 8, 4, 9, 4),
(10, 9, 1, 10, 1),
(11, 10, 2, 11, 2),
(12, 11, 3, 12, 3),
(13, 12, 4, 7, 4),
(14, 13, 5, 14, 1),
(15, 14, 1, 15, 2),
(16, 15, 2, 16, 3),
(17, 16, 3, 17, 4),
(18, 17, 4, 7, 2),
(19, 18, 5, 18, 3),
(20, 19, 1, 19, 4),
(21, 20, 2, 20, 1);

-- data for schools table
INSERT INTO schools
(school_id, name, address)
VALUES
(1,'Ohio University - Chillicothe','4931 Mallory Point'),
(3,'Estonian Academy of Arts','7 Milwaukee Road'),
(6,'Al-Birony University','3 Parkside Drive'),
(7,'Universitas Mulawarman','2 Alpine Circle'),
(8,'Pedagogical University of Slupsk','8 Monument Avenue'),
(9,'Oduduwa University','2 Commercial Junction'),
(10,'University of Alabama - Huntsville','61 Grayhawk Plaza');

-- data for grades table
INSERT INTO grades
(grade_id, level, school_id)
VALUES
(1,'Kinder',1),
(2,'Prim 2',1),
(3,'Prim 3',1),
(4,'Prim 4',1),
(5,'Prim 5',1),
(6,'Sec 2',6),
(7,'TEBA 2',3),
(8,'TEBA 3',3),
(9,'TEBA 4',3);

-- data for stores table
INSERT INTO stores
(store_id, name, location)
VALUES
(1,'Angelinas Store','1234 Computer Road'),
(2,'Javiers Store','3456 Near the River'),
(3,'Massiels Store','4489 Up that Huge Hill'),
(4,'Jaimes Store','2323 Made Up Road'),
(5,'Panchos Store','6769 Lime Ranch Street');

-- data for supplies
INSERT INTO supplies
(supply_id, supply_name, unit_cost, quantity, student_id, store_id, grade_id)
VALUES
(9, 'pens', 4, 4, 1, null, null ),
(10, 'markers', 2, 100, null, 2, null),
(11, 'red pens', 5, 200, null, 2, null),
(12, 'highlighters', 6, 130, null, 2, null),
(13, 'lined paper', 10, 5, null, null, 1),
(14, 'notebooks', 25, 4, null, null, 1),
(15, 'erasers', 3, 3, null, null, 1),
(16, 'stickers', 15, 2, null, null, 2),
(17, 'calculators', 65, 1, null, null, 8),
(18, 'protractors', 29, 1, null, null, 8),
(19, 'pencil cases', 105, 1, null, null, 3),
(20, 'pencils', 10, 6, null, null, 1), 
(21, 'pencils', 12, 230, null, 1, null),
(22, 'pencils', 11, 110, null, 3, null),
(23, 'pencils', 10, 98, null, 4, null),
(24, 'pencils', 9, 120, null, 5, null),
(25, 'pens', 8, 5, null, null, 4),
(26, 'pens', 8, 8, null, null, 5),
(27, 'pens', 8, 5, null, null, 6),
(28, 'pens', 8, 8, null, null, 7),
(29, 'pens', 8, 10, null, null, 9);
