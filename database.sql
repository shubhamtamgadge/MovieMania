create database MovieMania;

use MovieMania;

create table users
(
user_id int primary key auto_increment,
name varchar(30),
email varchar(30),
phone varchar(30)
);

create table movies
(
movie_id int  primary key auto_increment,
title varchar(30),
genre varchar(30),
lang varchar(30),
duration int
);


create table theaters
(
theater_id int  primary key auto_increment,
name varchar(30),
city varchar(30)
);

create table shows
(
show_id int  primary key auto_increment,
movie_id int,
theater_id int,
timing varchar(30),
available_seats int,
foreign key (movie_id) references movies(movie_id),
foreign key (theater_id) references theaters(theater_id)
);


create table seats
(
seat_id int  primary key auto_increment,
show_id int,
seat_number varchar(30),
is_booked boolean default false,
foreign key (show_id) references shows(show_id)
);


create table bookings
(
booking_id int  primary key auto_increment,
user_id int,
show_id int,
seats_booked varchar(30),
total_price decimal(10,2)
);


show databases;

show tables;

desc movies;

insert into users(name, email, phone) values
('Shubham', 'shubham@gmail.com', '9535789652'),
('Ayush', 'ayush@gmail.com', '9853327245'),
('Piyush', 'piyush@gmail.com', '8896523548'),
('Harsh', 'harsh@gmail.com', '9765357984'),
('Alpesh', 'alpesh@gmail.com', '8796853215'),
('Sandesh', 'sandesh@gmail.com', '9765487635'),
('Ravi', 'ravi@gmail.com', '8965745326');

insert into movies(title,genre, lang, duration) values
('Captrain America', 'Action', 'English', '140'),
('Pushpa', 'Thriller', 'Telugu', '153'),
('Ironman', 'Action', 'English', '164'),
('KGF', 'Action', 'Hindi', '148'),
('DeadPool', 'Action', 'English', '171'),
('Kabir Singh', 'Romantic', 'Hindi', '176'),
('Avengers', 'Action', 'English', '165'),
('Chhava', 'History', 'Hindi', '157');


select * from movies;

update movies set genre = 'Thriller' where movie_id = 4; 



insert into theaters(name,city) values
('PVR','Pune'),('INOX','Pune'),('Cinepolis','Pune'),('Carnival Cinemas','Pune'),('IMAX','Pune'),('Eternity','Pune'),
('IMAX','Nagpur'),('Cinepolis','Nagpur'),('PVR','Nagpur'),('Eternity','Nagpur'),('INOX','Nagpur'),('Carnival Cinemas','Nagpur'),
("Eternity", 'Mumbai'),("PVR", 'Mumbai'),("INOX", 'Mumbai'),("IMAX", 'Mumbai'),("Cinepolis", 'Mumbai'),("Carnival Cinemas", 'Mumbai'),
('Cinepolis','Goa'),('INOX','Goa'),('PVR','Goa'),('Carnival Cinemas','Goa'),('IMAX','Goa'),('Eternity','Goa'),
('Carnival Cinemas','Agra'),('Cinepolis','Agra'),('PVR','Agra'),('Eternity','Agra'),('INOX','Agra'),('IMAX','Agra'),
("Eternity", 'Delhi'),("PVR", 'Delhi'),("INOX", 'Delhi'),("IMAX", 'Delhi'),("Cinepolis", 'Delhi'),("Carnival Cinemas", 'Delhi'),
('PVR','Chennai'),('INOX','Chennai'),('Cinepolis','Chennai'),('Carnival Cinemas','Chennai'),('IMAX','Chennai'),('Eternity','Chennai'),
('IMAX','Kolkata'),('Cinepolis','Kolkata'),('PVR','Kolkata'),('Eternity','Kolkata'),('INOX','Kolkata'),('Carnival Cinemas','Kolkata');

select * from theaters;

insert into shows(movie_id, theater_id, timing, available_seats) values
(1,1,'12:00 AM',65),(3,1,'9:00 AM',55),(5,1,'10:00 AM',45),(8,1,'3:00 PM',74),(4,1,'9:00 AM',65),
(3,2,'12:00 AM',65),(8,2,'9:00 AM',55),(4,2,'10:00 AM',45),
(5,3,'10:00 AM',45),(8,3,'3:00 PM',74),(4,3,'9:00 AM',65),
(3,4,'9:00 AM',55),(5,4,'10:00 AM',45),(8,4,'3:00 PM',74),
(7,5,'11:00 AM',65),(1,5,'8:00 AM',55),(5,5,'1:00 PM',45),
(2,6,'10:00 AM',45),(6,6,'3:00 PM',74),(4,6,'9:00 AM',65),
(4,7,'9:00 AM',55),(3,7,'10:00 AM',45),(5,7,'3:00 PM',74),
(5,8,'10:00 AM',45),(8,8,'3:00 PM',74),(4,8,'9:00 AM',65),
(3,9,'9:00 AM',55),(5,9,'10:00 AM',45),(8,9,'3:00 PM',74),
(7,10,'11:00 AM',65),(1,10,'8:00 AM',55),(5,10,'1:00 PM',45),
(2,11,'10:00 AM',45),(6,11,'3:00 PM',74),(4,11,'9:00 AM',65),
(3,12,'12:00 AM',65),(8,12,'9:00 AM',55),(4,12,'10:00 AM',45),
(5,13,'10:00 AM',45),(8,13,'3:00 PM',74),(4,13,'9:00 AM',65),
(3,14,'9:00 AM',55),(5,14,'10:00 AM',45),(8,14,'3:00 PM',74),
(7,15,'11:00 AM',65),(1,15,'8:00 AM',55),(5,15,'1:00 PM',45),
(2,16,'10:00 AM',45),(6,16,'3:00 PM',74),(4,16,'9:00 AM',65),
(4,17,'9:00 AM',55),(3,17,'10:00 AM',45),(5,17,'3:00 PM',74),
(5,18,'10:00 AM',45),(8,18,'3:00 PM',74),(4,18,'9:00 AM',65),
(3,19,'9:00 AM',55),(5,19,'10:00 AM',45),(8,19,'3:00 PM',74),
(7,20,'11:00 AM',65),(1,20,'8:00 AM',55),(5,20,'1:00 PM',45),
(2,21,'10:00 AM',45),(6,21,'3:00 PM',74),(4,21,'9:00 AM',65),
(3,22,'12:00 AM',65),(8,22,'9:00 AM',55),(4,22,'10:00 AM',45),
(5,23,'10:00 AM',45),(8,23,'3:00 PM',74),(4,23,'9:00 AM',65),
(3,24,'9:00 AM',55),(5,24,'10:00 AM',45),(8,24,'3:00 PM',74),
(7,25,'11:00 AM',65),(1,25,'8:00 AM',55),(5,25,'1:00 PM',45),
(2,26,'10:00 AM',45),(6,26,'3:00 PM',74),(4,26,'9:00 AM',65),
(4,27,'9:00 AM',55),(3,27,'10:00 AM',45),(5,27,'3:00 PM',74),
(5,28,'10:00 AM',45),(8,28,'3:00 PM',74),(4,28,'9:00 AM',65),
(3,29,'9:00 AM',55),(5,29,'10:00 AM',45),(8,29,'3:00 PM',74),
(7,30,'11:00 AM',65),(1,30,'8:00 AM',55),(5,30,'1:00 PM',45),
(2,31,'10:00 AM',45),(6,31,'3:00 PM',74),(4,31,'9:00 AM',65),
(3,32,'12:00 AM',65),(8,32,'9:00 AM',55),(4,32,'10:00 AM',45),
(5,33,'10:00 AM',45),(8,33,'3:00 PM',74),(4,33,'9:00 AM',65),
(3,34,'9:00 AM',55),(5,34,'10:00 AM',45),(8,34,'3:00 PM',74),
(7,35,'11:00 AM',65),(1,35,'8:00 AM',55),(5,35,'1:00 PM',45),
(2,36,'10:00 AM',45),(6,36,'3:00 PM',74),(4,36,'9:00 AM',65),
(4,37,'9:00 AM',55),(3,37,'10:00 AM',45),(5,37,'3:00 PM',74),
(5,38,'10:00 AM',45),(8,38,'3:00 PM',74),(4,38,'9:00 AM',65),
(3,39,'9:00 AM',55),(5,39,'10:00 AM',45),(8,39,'3:00 PM',74),
(7,40,'11:00 AM',65),(1,40,'8:00 AM',55),(5,40,'1:00 PM',45),
(2,41,'10:00 AM',45),(6,41,'3:00 PM',74),(4,41,'9:00 AM',65),
(3,42,'12:00 AM',65),(8,42,'9:00 AM',55),(4,42,'10:00 AM',45),
(5,43,'10:00 AM',45),(8,43,'3:00 PM',74),(4,43,'9:00 AM',65),
(3,44,'9:00 AM',55),(5,44,'10:00 AM',45),(8,44,'3:00 PM',74),
(7,45,'11:00 AM',65),(1,45,'8:00 AM',55),(5,45,'1:00 PM',45),
(2,46,'10:00 AM',45),(6,46,'3:00 PM',74),(4,46,'9:00 AM',65),
(7,47,'11:00 AM',65),(1,47,'8:00 AM',55),(5,47,'1:00 PM',45),
(2,48,'10:00 AM',45),(6,48,'3:00 PM',74),(4,48,'9:00 AM',65);



select * from shows;


insert into seats(show_id, seat_number,is_booked) values
(1, 'A1', false), (1, 'A2', false), (1, 'A3', false), (1, 'A4', false), (1, 'A5', false),
(2, 'B1', false), (2, 'B2', false), (2, 'B3', false), (2, 'B4', false), (2, 'B5', false),
(3, 'C1', false), (3, 'C2', false), (3, 'C3', false), (3, 'C4', false), (3, 'C5', false),
(4, 'D1', false), (4, 'D2', false), (4, 'D3', false), (4, 'D4', false), (4, 'D5', false),
(5, 'A1', false), (5, 'A2', false), (5, 'A3', false), (5, 'A4', false), (5, 'A5', false),
(6, 'B1', false), (6, 'B2', false), (6, 'B3', false), (6, 'B4', false), (6, 'B5', false),
(7, 'C1', false), (7, 'C2', false), (7, 'C3', false), (7, 'C4', false), (7, 'C5', false),
(8, 'D1', false), (8, 'D2', false), (8, 'D3', false), (8, 'D4', false), (8, 'D5', false),
(9, 'A1', false), (9, 'A2', false), (9, 'A3', false), (9, 'A4', false), (9, 'A5', false),
(10, 'B1', false), (10, 'B2', false), (10, 'B3', false), (10, 'B4', false), (10, 'B5', false),
(11, 'C1', false), (11, 'C2', false), (11, 'C3', false), (11, 'C4', false), (11, 'C5', false),
(12, 'D1', false), (12, 'D2', false), (12, 'D3', false), (12, 'D4', false), (12, 'D5', false),
(13, 'A1', false), (13, 'A2', false), (13, 'A3', false), (13, 'A4', false), (13, 'A5', false),
(14, 'B1', false), (14, 'B2', false), (14, 'B3', false), (14, 'B4', false), (14, 'B5', false),
(15, 'C1', false), (15, 'C2', false), (15, 'C3', false), (15, 'C4', false), (15, 'C5', false),
(16, 'D1', false), (16, 'D2', false), (16, 'D3', false), (16, 'D4', false), (16, 'D5', false),
(17, 'A1', false), (17, 'A2', false), (17, 'A3', false), (17, 'A4', false), (17, 'A5', false),
(18, 'B1', false), (18, 'B2', false), (18, 'B3', false), (18, 'B4', false), (18, 'B5', false),
(19, 'C1', false), (19, 'C2', false), (19, 'C3', false), (19, 'C4', false), (19, 'C5', false),
(20, 'D1', false), (20, 'D2', false), (20, 'D3', false), (20, 'D4', false), (20, 'D5', false),
(21, 'A1', false), (21, 'A2', false), (21, 'A3', false), (21, 'A4', false), (21, 'A5', false),
(22, 'B1', false), (22, 'B2', false), (22, 'B3', false), (22, 'B4', false), (22, 'B5', false),
(23, 'C1', false), (23, 'C2', false), (23, 'C3', false), (23, 'C4', false), (23, 'C5', false),
(24, 'D1', false), (24, 'D2', false), (24, 'D3', false), (24, 'D4', false), (24, 'D5', false),
(25, 'A1', false), (25, 'A2', false), (25, 'A3', false), (25, 'A4', false), (25, 'A5', false),
(26, 'B1', false), (26, 'B2', false), (26, 'B3', false), (26, 'B4', false), (26, 'B5', false),
(27, 'C1', false), (27, 'C2', false), (27, 'C3', false), (27, 'C4', false), (27, 'C5', false),
(28, 'D1', false), (28, 'D2', false), (28, 'D3', false), (28, 'D4', false), (28, 'D5', false),
(29, 'A1', false), (29, 'A2', false), (29, 'A3', false), (29, 'A4', false), (29, 'A5', false),
(30, 'B1', false), (30, 'B2', false), (30, 'B3', false), (30, 'B4', false), (30, 'B5', false),
(31, 'C1', false), (31, 'C2', false), (31, 'C3', false), (31, 'C4', false), (31, 'C5', false),
(32, 'D1', false), (32, 'D2', false), (32, 'D3', false), (32, 'D4', false), (32, 'D5', false),
(33, 'A1', false), (33, 'A2', false), (33, 'A3', false), (33, 'A4', false), (33, 'A5', false),
(34, 'B1', false), (34, 'B2', false), (34, 'B3', false), (34, 'B4', false), (34, 'B5', false),
(35, 'C1', false), (35, 'C2', false), (35, 'C3', false), (35, 'C4', false), (35, 'C5', false),
(36, 'D1', false), (36, 'D2', false), (36, 'D3', false), (36, 'D4', false), (36, 'D5', false),
(37, 'A1', false), (37, 'A2', false), (37, 'A3', false), (37, 'A4', false), (37, 'A5', false),
(38, 'B1', false), (38, 'B2', false), (38, 'B3', false), (38, 'B4', false), (38, 'B5', false),
(39, 'C1', false), (39, 'C2', false), (39, 'C3', false), (39, 'C4', false), (39, 'C5', false),
(40, 'D1', false), (40, 'D2', false), (40, 'D3', false), (40, 'D4', false), (40, 'D5', false),
(41, 'A1', false), (41, 'A2', false), (41, 'A3', false), (41, 'A4', false), (41, 'A5', false),
(42, 'B1', false), (42, 'B2', false), (42, 'B3', false), (42, 'B4', false), (42, 'B5', false),
(43, 'C1', false), (43, 'C2', false), (43, 'C3', false), (43, 'C4', false), (43, 'C5', false),
(44, 'D1', false), (44, 'D2', false), (44, 'D3', false), (44, 'D4', false), (44, 'D5', false),
(45, 'A1', false), (45, 'A2', false), (45, 'A3', false), (45, 'A4', false), (45, 'A5', false),
(46, 'B1', false), (46, 'B2', false), (46, 'B3', false), (46, 'B4', false), (46, 'B5', false),
(47, 'C1', false), (47, 'C2', false), (47, 'C3', false), (47, 'C4', false), (47, 'C5', false),
(48, 'D1', false), (48, 'D2', false), (48, 'D3', false), (48, 'D4', false), (48, 'D5', false),
(49, 'A1', false), (49, 'A2', false), (49, 'A3', false), (49, 'A4', false), (49, 'A5', false),
(50, 'B1', false), (50, 'B2', false), (50, 'B3', false), (50, 'B4', false), (50, 'B5', false),
(51, 'C1', false), (51, 'C2', false), (51, 'C3', false), (51, 'C4', false), (51, 'C5', false),
(52, 'D1', false), (52, 'D2', false), (52, 'D3', false), (52, 'D4', false), (52, 'D5', false),
(53, 'A1', false), (53, 'A2', false), (53, 'A3', false), (53, 'A4', false), (53, 'A5', false),
(54, 'B1', false), (54, 'B2', false), (54, 'B3', false), (54, 'B4', false), (54, 'B5', false),
(55, 'C1', false), (55, 'C2', false), (55, 'C3', false), (55, 'C4', false), (55, 'C5', false),
(56, 'D1', false), (56, 'D2', false), (56, 'D3', false), (56, 'D4', false), (56, 'D5', false),
(57, 'A1', false), (57, 'A2', false), (57, 'A3', false), (57, 'A4', false), (57, 'A5', false),
(58, 'B1', false), (58, 'B2', false), (58, 'B3', false), (58, 'B4', false), (58, 'B5', false),
(59, 'C1', false), (59, 'C2', false), (59, 'C3', false), (59, 'C4', false), (59, 'C5', false),
(60, 'D1', false), (60, 'D2', false), (60, 'D3', false), (60, 'D4', false), (60, 'D5', false),
(61, 'A1', false), (61, 'A2', false), (61, 'A3', false), (61, 'A4', false), (61, 'A5', false),
(62, 'B1', false), (62, 'B2', false), (62, 'B3', false), (62, 'B4', false), (62, 'B5', false),
(63, 'C1', false), (63, 'C2', false), (63, 'C3', false), (63, 'C4', false), (63, 'C5', false),
(64, 'D1', false), (64, 'D2', false), (64, 'D3', false), (64, 'D4', false), (64, 'D5', false),
(65, 'A1', false), (65, 'A2', false), (65, 'A3', false), (65, 'A4', false), (65, 'A5', false),
(66, 'B1', false), (66, 'B2', false), (66, 'B3', false), (66, 'B4', false), (66, 'B5', false),
(67, 'C1', false), (67, 'C2', false), (67, 'C3', false), (67, 'C4', false), (67, 'C5', false),
(68, 'D1', false), (68, 'D2', false), (68, 'D3', false), (68, 'D4', false), (68, 'D5', false),
(69, 'A1', false), (69, 'A2', false), (69, 'A3', false), (69, 'A4', false), (69, 'A5', false),
(70, 'B1', false), (70, 'B2', false), (70, 'B3', false), (70, 'B4', false), (70, 'B5', false),
(71, 'C1', false), (71, 'C2', false), (71, 'C3', false), (71, 'C4', false), (71, 'C5', false),
(72, 'D1', false), (72, 'D2', false), (72, 'D3', false), (72, 'D4', false), (72, 'D5', false),
(73, 'A1', false), (73, 'A2', false), (73, 'A3', false), (73, 'A4', false), (73, 'A5', false),
(74, 'B1', false), (74, 'B2', false), (74, 'B3', false), (74, 'B4', false), (74, 'B5', false),
(75, 'C1', false), (75, 'C2', false), (75, 'C3', false), (75, 'C4', false), (75, 'C5', false),
(76, 'D1', false), (76, 'D2', false), (76, 'D3', false), (76, 'D4', false), (76, 'D5', false),
(77, 'A1', false), (77, 'A2', false), (77, 'A3', false), (77, 'A4', false), (77, 'A5', false),
(78, 'B1', false), (78, 'B2', false), (78, 'B3', false), (78, 'B4', false), (78, 'B5', false),
(79, 'C1', false), (79, 'C2', false), (79, 'C3', false), (79, 'C4', false), (79, 'C5', false),
(80, 'D1', false), (80, 'D2', false), (80, 'D3', false), (80, 'D4', false), (80, 'D5', false),
(81, 'A1', false), (81, 'A2', false), (81, 'A3', false), (81, 'A4', false), (81, 'A5', false),
(82, 'B1', false), (82, 'B2', false), (82, 'B3', false), (82, 'B4', false), (82, 'B5', false),
(83, 'C1', false), (83, 'C2', false), (83, 'C3', false), (83, 'C4', false), (83, 'C5', false),
(84, 'D1', false), (84, 'D2', false), (84, 'D3', false), (84, 'D4', false), (84, 'D5', false),
(85, 'A1', false), (85, 'A2', false), (85, 'A3', false), (85, 'A4', false), (85, 'A5', false),
(86, 'B1', false), (86, 'B2', false), (86, 'B3', false), (86, 'B4', false), (86, 'B5', false),
(87, 'C1', false), (87, 'C2', false), (87, 'C3', false), (87, 'C4', false), (87, 'C5', false),
(88, 'D1', false), (88, 'D2', false), (88, 'D3', false), (88, 'D4', false), (88, 'D5', false),
(89, 'A1', false), (89, 'A2', false), (89, 'A3', false), (89, 'A4', false), (89, 'A5', false),
(90, 'B1', false), (90, 'B2', false), (90, 'B3', false), (90, 'B4', false), (90, 'B5', false),
(91, 'C1', false), (91, 'C2', false), (91, 'C3', false), (91, 'C4', false), (91, 'C5', false),
(92, 'D1', false), (92, 'D2', false), (92, 'D3', false), (92, 'D4', false), (92, 'D5', false),
(93, 'A1', false), (93, 'A2', false), (93, 'A3', false), (93, 'A4', false), (93, 'A5', false),
(94, 'B1', false), (94, 'B2', false), (94, 'B3', false), (94, 'B4', false), (94, 'B5', false),
(95, 'C1', false), (95, 'C2', false), (95, 'C3', false), (95, 'C4', false), (95, 'C5', false),
(96, 'D1', false), (96, 'D2', false), (96, 'D3', false), (96, 'D4', false), (96, 'D5', false),
(97, 'A1', false), (97, 'A2', false), (97, 'A3', false), (97, 'A4', false), (97, 'A5', false),
(98, 'B1', false), (98, 'B2', false), (98, 'B3', false), (98, 'B4', false), (98, 'B5', false),
(99, 'C1', false), (99, 'C2', false), (99, 'C3', false), (99, 'C4', false), (99, 'C5', false),
(100, 'D1', false), (100, 'D2', false), (100, 'D3', false), (100, 'D4', false), (100, 'D5', false),
(101, 'A1', false), (101, 'A2', false), (101, 'A3', false), (101, 'A4', false), (101, 'A5', false),
(102, 'B1', false), (102, 'B2', false), (102, 'B3', false), (102, 'B4', false), (102, 'B5', false),
(103, 'C1', false), (103, 'C2', false), (103, 'C3', false), (103, 'C4', false), (103, 'C5', false),
(104, 'D1', false), (104, 'D2', false), (104, 'D3', false), (104, 'D4', false), (104, 'D5', false),
(105, 'A1', false), (105, 'A2', false), (105, 'A3', false), (105, 'A4', false), (105, 'A5', false),
(106, 'B1', false), (106, 'B2', false), (106, 'B3', false), (106, 'B4', false), (106, 'B5', false),
(107, 'C1', false), (107, 'C2', false), (107, 'C3', false), (107, 'C4', false), (107, 'C5', false),
(108, 'D1', false), (108, 'D2', false), (108, 'D3', false), (108, 'D4', false), (108, 'D5', false),
(109, 'A1', false), (109, 'A2', false), (109, 'A3', false), (109, 'A4', false), (109, 'A5', false),
(110, 'B1', false), (110, 'B2', false), (110, 'B3', false), (110, 'B4', false), (110, 'B5', false),
(111, 'C1', false), (111, 'C2', false), (111, 'C3', false), (111, 'C4', false), (111, 'C5', false),
(112, 'D1', false), (112, 'D2', false), (112, 'D3', false), (112, 'D4', false), (112, 'D5', false),
(113, 'A1', false), (113, 'A2', false), (113, 'A3', false), (113, 'A4', false), (113, 'A5', false),
(114, 'B1', false), (114, 'B2', false), (114, 'B3', false), (114, 'B4', false), (114, 'B5', false),
(115, 'C1', false), (115, 'C2', false), (115, 'C3', false), (115, 'C4', false), (115, 'C5', false),
(116, 'D1', false), (116, 'D2', false), (116, 'D3', false), (116, 'D4', false), (116, 'D5', false),
(117, 'A1', false), (117, 'A2', false), (117, 'A3', false), (117, 'A4', false), (117, 'A5', false),
(118, 'B1', false), (118, 'B2', false), (118, 'B3', false), (118, 'B4', false), (118, 'B5', false),
(119, 'C1', false), (119, 'C2', false), (119, 'C3', false), (119, 'C4', false), (119, 'C5', false),
(120, 'D1', false), (120, 'D2', false), (120, 'D3', false), (120, 'D4', false), (120, 'D5', false),
(121, 'A1', false), (121, 'A2', false), (121, 'A3', false), (121, 'A4', false), (121, 'A5', false),
(122, 'B1', false), (122, 'B2', false), (122, 'B3', false), (122, 'B4', false), (122, 'B5', false),
(123, 'C1', false), (123, 'C2', false), (123, 'C3', false), (123, 'C4', false), (123, 'C5', false),
(124, 'D1', false), (124, 'D2', false), (124, 'D3', false), (124, 'D4', false), (124, 'D5', false),
(125, 'A1', false), (125, 'A2', false), (125, 'A3', false), (125, 'A4', false), (125, 'A5', false),
(126, 'B1', false), (126, 'B2', false), (126, 'B3', false), (126, 'B4', false), (126, 'B5', false),
(127, 'C1', false), (127, 'C2', false), (127, 'C3', false), (127, 'C4', false), (127, 'C5', false),
(128, 'D1', false), (128, 'D2', false), (128, 'D3', false), (128, 'D4', false), (128, 'D5', false),
(129, 'A1', false), (129, 'A2', false), (129, 'A3', false), (129, 'A4', false), (129, 'A5', false),
(130, 'B1', false), (130, 'B2', false), (130, 'B3', false), (130, 'B4', false), (130, 'B5', false),
(131, 'C1', false), (131, 'C2', false), (131, 'C3', false), (131, 'C4', false), (131, 'C5', false),
(132, 'D1', false), (132, 'D2', false), (132, 'D3', false), (132, 'D4', false), (132, 'D5', false),
(133, 'A1', false), (133, 'A2', false), (133, 'A3', false), (133, 'A4', false), (133, 'A5', false),
(134, 'B1', false), (134, 'B2', false), (134, 'B3', false), (134, 'B4', false), (134, 'B5', false),
(135, 'C1', false), (135, 'C2', false), (135, 'C3', false), (135, 'C4', false), (135, 'C5', false),
(136, 'D1', false), (136, 'D2', false), (136, 'D3', false), (136, 'D4', false), (136, 'D5', false),
(137, 'A1', false), (137, 'A2', false), (137, 'A3', false), (137, 'A4', false), (137, 'A5', false),
(138, 'B1', false), (138, 'B2', false), (138, 'B3', false), (138, 'B4', false), (138, 'B5', false),
(139, 'C1', false), (139, 'C2', false), (139, 'C3', false), (139, 'C4', false), (139, 'C5', false),
(140, 'D1', false), (140, 'D2', false), (140, 'D3', false), (140, 'D4', false), (140, 'D5', false),
(141, 'A1', false), (141, 'A2', false), (141, 'A3', false), (141, 'A4', false), (141, 'A5', false),
(142, 'B1', false), (142, 'B2', false), (142, 'B3', false), (142, 'B4', false), (142, 'B5', false),
(143, 'C1', false), (143, 'C2', false), (143, 'C3', false), (143, 'C4', false), (143, 'C5', false),
(144, 'D1', false), (144, 'D2', false), (144, 'D3', false), (144, 'D4', false), (144, 'D5', false),
(145, 'A1', false), (145, 'A2', false), (145, 'A3', false), (145, 'A4', false), (145, 'A5', false),
(146, 'B1', false), (146, 'B2', false), (146, 'B3', false), (146, 'B4', false), (146, 'B5', false);


 select * from seats;
  select * from movies;

 select * from shows;
 select * from users;
 
 select * from bookings;

 select * from theaters;

select s.movie_id, m.title from shows as s join movies as m on s.movie_id = m.movie_id where s.theater_id = 1;

update seats set is_booked = false where is_booked = true;

select is_booked from seats;

delete from users where user_id in (12,13);

select distinct city from theaters; 

update users set phone = '9785683526' where user_id = 15;



