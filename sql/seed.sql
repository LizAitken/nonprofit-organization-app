--create some students
INSERT INTO students (student_id,first_name,last_name,age,sponsorship,grades_id,money,link_id)
VALUES
(1,'Wells','Esby',12,'partial',null,51.21,null),
(2,'Kristine','Camden',8,'full',null,62.93,null),
(3,'Ansel','Brewett',8,'full',null,97.48,null),
(4,'Fanny','Sidebottom',8,'partial',null,73.28,null),
(5,'Kiel','Southcomb',9,'partial',null,57.74,null),
(6,'Bernadette','Yacobsohn',12,'partial',null,61.72,null),
(7,'Niels','Blabie',13,'partial',null,47.37,null),
(8,'Kaitlin','Whifen',17,'partial',null,79.6,null),
(9,'Westbrooke','Steabler',3,'partial',null,26.56,null),
(10,'Heall','Forstall',10,'full',null,18.27,null),
(11,'Menard','Creelman',2,'full',null,83.52,null),
(12,'Cassaundra','Sayre',4,'full',null,46.37,null),
(13,'Kora','Dovidaitis',10,'full',null,3.12,null),
(14,'Bibby','Kiezler',16,'full',null,29.93,null),
(15,'Beverlie','Altimas',3,'full',null,99.98,null),
(16,'Kendell','Nester',16,'partial',null,14.62,null),
(17,'Hanan','Behnecke',12,'partial',null,10.96,null),
(18,'Honoria','Iacapucci',3,'partial',null,42.49,null),
(19,'Nestor','Daine',17,'full',null,27.49,null),
(20,'Rosene','Kenward',11,'partial',null,97.26,null);

--create some users
INSERT INTO users
	(password, first_name, last_name, email, phone, photo, user_type)
VALUES
	('123', 'Liz', 'Aitken', 'liz_aitken@gmail.com', '555-555-5555', null, null),
	('123', 'Jack', 'Faulk', 'jack_faulk@gmail.com', '123-456-7890', null, null)
;
