-- insert statements

-- Song table
INSERT INTO Song (song_id,	name,	artist,	genre,	duration,	album)
VALUES 
(NULL,'When Strong Jugs Cry','Web','Tech trance','9:38','Game on'),
(NULL,'Whole Lotta Jugs','Nightowl','Gothic rock','7:51','Time flies'),
(NULL,'Late Night Snail','Muse','Electro house','4:15','Final straw'),
(NULL,'Dont Eat','Judge','Desert rock','8:25','Cobweb of lies'),
(NULL,'Sweet Snail O Mine','Mine','Toytown Techno','2:15','Birthday suit'),
(NULL,'Snail I Have Become','Bizarre','Dubstep','10:58','All doubt'),
(NULL,'Four Strong Jugs','Charles Morgan','Progressive','10:31','Bursting bubbles'),
(NULL,'Baby, I Need Your Jugs','Phillip Wilde','Twee Pop','7:20','No justice'),
(NULL,'Here Without Jenny','Guy Dark','Anarcho punk','10:0','First chance'),
(NULL,'Gonna Make You Eat','Lucas Valentine','Christian punk','6:25','Dedication to the cause'),
(NULL,'Hotel Tescos','Steve Lynn','Breakbeat hardcore','9:40','Deaths dead'),
(NULL,'Stand by Your Snail','Teddie Moon','Tech trance','7:26','Grains of sand'),
(NULL,'Jennys Waiting','Nicolas Miles','Gothic rock','7:26','Dedication to the cause'),
(NULL,'Rhythm of the Snail','Justin Storm','Electro house','1:50','Blissful ignorance'),
(NULL,'Strong Jugs Forever','Donald Holmes','Desert rock','10:21','Dime in two dozen'),
(NULL,'Free Snail','Marcus Samson','Toytown Techno','8:48','Devils advocate'),
(NULL,'Jennys Strong Jugs Club Band','Nicholas Isle','Dubstep','8:53','Dream big'),
(NULL,'Have You Met Jenny?','Jake Powers','Progressive','8:43','District zero'),
(NULL,'Born Strong','Reaper','Twee Pop','10:25','Committee of despair')


-- Artist 
INSERT INTO Artist (artist_id,	username,	firstname,	lastname,	birthdate,	city)
VALUES
(NULL,'Reaper','Silk','Shadetalon','1998-04-08','Ankara'),
(NULL,'Boar','Wings','Fistmark','1974-11-24','Istanbul'),
(NULL,'Rush','Vessel','Wildshot','1957-06-10','Barcelona'),
(NULL,'Web','Chain','Trutheyes','1989-08-03','Tokyo'),
(NULL,'Sugar','Light','Pinemore','1998-09-17','Chicago'),
(NULL,'Muse','Fog','Wintersoar','1997-01-23','Paris'),
(NULL,'Leo Cannon','Alec Gale','Tallrunner','1995-11-08','Moscow'),
(NULL,'Edgar Laine','Allan Gibbs','Moltenstrike','1965-12-16','Buenos Aires'),
(NULL,'Timmy Steele','Jordan Kane','Twilightflaw','1952-02-17','Ottawa'),
(NULL,'Bryan Spacey','Jackson Kerry','Masterorb','1958-02-25','Beijing')
/*
,(NULL,'Crow','Gianna Rider','Voiddew','1950-06-26','Havana'),
(NULL,'Mouse','Abby Little','Hallowedridge','1985-03-29','Prague'),
(NULL,'Crib','Amber Dawn','Swiftchewer','2000-03-31','Helsinki'),
(NULL,'Luck','Lila Ellis','Earthforest','1963-07-21','Budapest'),
(NULL,'Locket','Kellie Caine','Bonebend','1950-10-23','Rome'),
(NULL,'Link','Sonya Gray','Cloudgloom','1975-07-06','Istanbul'),
(NULL,'Willy Gibson','Debra Todd','Truthbone','1950-06-13','Paris'),
(NULL,'Frankie Fawn','Skylar Lake','Glowcrag','1975-06-01','Ottawa'),
(NULL,'Chris Grant','Tara Morgan','Cresthand','1999-07-14','Ankara')
*/

-- SubscriptionType
INSERT INTO SubscriptionType (subscription_type_id,	subscription_type_desc,	duration)
VALUES
(1,'Monthly',30),
(2,'Three Month',90),
(3,'Annually',365)


-- Subscription
INSERT INTO Subscription (subscription_id,	subscription_type_id,	subscription_amount,	start_date,	end_date)
VALUES
(NULL,1,10,'2021-12-12 19:53:19','2022-01-11 19:53:19'),
(NULL,2,25,'2021-11-30 21:30:21','2021-12-30 21:30:21'),
(NULL,3,100,'2021-12-17 19:02:19','2022-12-17 19:02:19'),
(NULL,2,25,'2021-12-11 20:39:20','2022-01-10 20:39:20'),
(NULL,1,10,'2021-12-19 16:47:16','2022-01-18 16:47:16'),
(NULL,1,10,'2021-12-17 16:12:16','2022-01-16 16:12:16'),
(NULL,1,10,'2021-12-02 17:48:17','2022-01-01 17:48:17'),
(NULL,1,10,'2021-12-01 21:03:21','2021-12-31 21:03:21'),
(NULL,3,100,'2021-12-16 17:11:17','2022-12-16 17:11:17'),
(NULL,2,25,'2021-12-22 17:41:17','2022-01-21 17:41:17'),
(NULL,3,100,'2021-12-06 16:05:16','2022-12-06 16:05:16'),
(NULL,3,100,'2021-12-17 19:48:19','2022-12-17 19:48:19'),
(NULL,2,25,'2021-12-05 15:20:15','2022-01-04 15:20:15'),
(NULL,1,10,'2021-12-20 13:12:13','2022-01-19 13:12:13'),
(NULL,2,25,'2021-12-09 14:53:14','2022-01-08 14:53:14'),
(NULL,1,10,'2021-12-09 16:05:16','2022-01-08 16:05:16'),
(NULL,3,100,'2021-12-23 23:06:23','2022-12-23 23:06:23'),
(NULL,2,25,'2021-12-19 20:11:20','2022-01-18 20:11:20'),
(NULL,1,10,'2021-12-19 19:57:19','2022-01-18 19:57:19')


INSERT INTO `User`(user_id,	subscription_id,	channel_id,	is_active,	username,	firstname,	lastname,	birthdate,	address,	city)
VALUES
(NULL,1,1,1,'tortoise','Nolan','Dolan','1977-05-07','1433 Simpson Street','Ankara'),
(NULL,2,2,1,'warning','Issac','Sharma','1966-03-26','4245 Goldie Lane','Istanbul'),
(NULL,3,3,1,'kitten','Macaulay','King','1987-02-01','2135 Badger Pond Lane','Barcelona'),
(NULL,4,6,1,'witch','Selina','Metcalfe','1975-01-22','1991 Jacobs Street','Tokyo'),
(NULL,5,8,1,'corner','Christian','Bloom','1985-05-13','3872 Bedford Street','Chicago'),
(NULL,6,1,1,'bunch','Tegan','Cleveland','1978-04-10','1816 Wolf Pen Road','Paris'),
(NULL,7,2,1,'merveille','Kaydon','Velasquez','1997-08-08','2916 Oxford Court','Moscow'),
(NULL,8,3,1,'chair','Julia','Pemberton','1968-06-19','236 Cambridge Drive','Buenos Aires'),
(NULL,9,6,1,'grain','Luisa','Mcclain','1988-03-12','570 Walkers Ridge Way','Ottawa'),
(NULL,10,8,1,'watch','Cheyenne','Floyd','1982-05-25','3951 Park Street','Beijing'),
(NULL,11,1,1,'predict','Raymond','Moss','1997-11-09','244 Jennifer Lane','Havana'),
(NULL,12,2,1,'porkchop','Raveena','Beck','1988-11-16','2601 Carriage Court','Prague'),
(NULL,13,3,1,'optimism','Myrtle','Amin','1986-06-04','1233 Devils Hill Road','Helsinki'),
(NULL,14,NULL,0,'actuary','Hawa','Palmer','1990-03-03','810 Rosemont Avenue','Budapest'),
(NULL,15,NULL,0,'mineshaft','Lilly-Ann','Barron','1998-12-22','1909 Romano Street','Rome'),
(NULL,16,NULL,0,'admonish','Zakary','Valentine','1983-04-18','1191 Holt Street','Istanbul'),
(NULL,17,NULL,0,'neck','Maddy','Brennan','1962-12-14','4011 University Hill Road','Paris'),
(NULL,18,NULL,0,'draught','Christiana','Malone','1971-02-20','2546 Twin House Lane','Ottawa'),
(NULL,19,NULL,0,'curvy','Yash','Boyd','2000-01-05','3464 Oxford Court','Ankara')


INSERT INTO ChannelDetail (channeldetail_id,	channel_id,	channel_name,	channel_desc,	channel_image_url)
VALUES
(NULL,1,'EpicPlayz','channel description 1','some_url_1'),
(NULL,2,'Claim2Game','channel description 2','some_url_2'),
(NULL,3,'GameParade','channel description 3','some_url_3'),
(NULL,4,'RetroRampage','channel description 4','some_url_4'),
(NULL,5,'Gamadame','channel description 5','some_url_5'),
(NULL,6,'Fabulous Facade','channel description 6','some_url_6'),
(NULL,7,'PunkNPretty','channel description 7','some_url_7'),
(NULL,8,'Grace Gorgeous','channel description 8','some_url_8'),
(NULL,9,'TypeFace Beauty','channel description 9','some_url_9'),
(NULL,10,'ShadesAtPlay','channel description 10','some_url_10')


INSERT INTO Channel (channel_id,	artist_id,	request_id,	is_active,	start_date,	end_date)
VALUES
(1,1,1,1,'2021-12-25 22:51:22',NULL),
(2,2,2,1,'2021-12-25 14:09:14',NULL),
(3,3,3,1,'2021-12-25 12:21:12',NULL),
(4,4,NULL,0,'2021-12-22 20:02:20','2021-12-22 23:41:23'),
(5,5,NULL,0,'2021-12-22 14:51:14','2021-12-23 12:22:12'),
(6,6,4,1,'2021-12-25 16:41:16',NULL),
(7,7,NULL,0,'2021-12-22 21:34:21','2021-12-23 18:15:18'),
(8,8,5,1,'2021-12-25 17:38:17',NULL),
(9,9,NULL,0,'2021-12-22 23:14:23','2021-12-23 17:13:17'),
(10,10,NULL,0,'2021-12-20 19:56:19','2021-12-21 17:43:17')


INSERT INTO Request (request_id,	user_id,	channel_id,	song_id,	is_played,	create_date,	complete_date,	tip_amount)
VALUES
(1,1,1,5,1,'2021-12-25 14:04:14','2021-12-25 14:09:14',6),
(2,2,2,13,1,'2021-12-25 18:02:18','2021-12-25 18:06:18',20),
(3,3,3,9,1,'2021-12-25 17:42:17','2021-12-25 17:45:17',95),
(4,4,6,18,1,'2021-12-25 20:51:20','2021-12-25 20:54:20',61),
(5,5,8,10,1,'2021-12-25 20:15:20','2021-12-25 20:20:20',53),
(6,6,1,17,1,'2021-12-25 19:41:19','2021-12-25 19:46:19',11),
(7,7,2,6,1,'2021-12-25 23:37:23','2021-12-25 23:40:23',38),
(8,8,3,12,1,'2021-12-25 15:23:15','2021-12-25 15:27:15',21),
(9,9,6,13,1,'2021-12-25 14:59:14','2021-12-25 15:03:15',33),
(10,10,8,10,1,'2021-12-25 16:32:16','2021-12-25 16:35:16',52),
(11,1,1,17,1,'2021-12-25 22:05:22','2021-12-25 22:09:22',6),
(12,2,2,19,1,'2021-12-25 23:42:23','2021-12-25 23:46:23',98),
(13,3,3,9,0,'2021-12-25 20:41:20',NULL,8),
(14,4,6,5,0,'2021-12-25 17:05:17',NULL,30),
(15,5,8,6,0,'2021-12-25 21:27:21',NULL,55),
(16,6,1,17,0,'2021-12-25 17:25:17',NULL,63),
(17,7,2,18,0,'2021-12-25 18:59:18',NULL,34),
(18,8,3,7,0,'2021-12-25 18:15:18',NULL,64),
(19,9,6,11,0,'2021-12-25 17:13:17',NULL,80)














