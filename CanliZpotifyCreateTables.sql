
-- Creating Tables
CREATE TABLE `User` (
	user_id INT AUTO_INCREMENT PRIMARY KEY,
	subscription_id INT NOT NULL,
	channel_id INT NULL,
	is_active bit NOT NULL,
	username VARCHAR(255) NOT NULL,
	firstname VARCHAR(255) NOT NULL,
	lastname VARCHAR(255) NOT NULL,
	birthdate DATE NOT NULL,
	address VARCHAR(255) NOT NULL,
	city VARCHAR(255) NOT NULL
)
;


CREATE TABLE Artist (
	artist_id INT AUTO_INCREMENT PRIMARY KEY,
	username VARCHAR(255) NOT NULL,
	firstname VARCHAR(255) NOT NULL,
	lastname VARCHAR(255) NOT NULL,
	birthdate DATE NOT NULL,
	city VARCHAR(255) NOT NULL
);


CREATE TABLE Subscription (
	subscription_id INT AUTO_INCREMENT PRIMARY KEY,
	subscription_type_id INT NOT NULL,
	subscription_amount decimal(5,2) NOT NULL,
	start_date timestamp NOT NULL,
	end_date timestamp NOT NULL
)
;

CREATE TABLE SubscriptionType (
	subscription_type_id INT PRIMARY KEY,
	subscription_type_desc VARCHAR(255) NOT NULL,
	duration timestamp NOT NULL
	
)
;

CREATE TABLE Channel (
	channel_id INT AUTO_INCREMENT PRIMARY KEY,
	artist_id INT NOT NULL,
	request_id BIGINT NULL,
	is_active bit NOT NULL,
	start_date timestamp NULL,
	end_date timestamp NULL
)
;

CREATE TABLE ChannelDetail (
	channeldetail_id INT AUTO_INCREMENT PRIMARY KEY,
	channel_id INT,
	channel_name VARCHAR(255) NOT NULL,
	channel_desc VARCHAR(255) NULL,
	channel_image_url VARCHAR(255) NULL
)
;


CREATE TABLE Request(
	request_id BIGINT AUTO_INCREMENT PRIMARY KEY,
	user_id INT NOT NULL,
	channel_id INT NOT NULL,
	song_id INT NOT NULL,
	is_played bit NOT NULL,
	create_date timestamp NULL,
	complete_date timestamp NULL,
	tip_amount decimal(25,2) NOT NULL
)
;

CREATE TABLE Song(
	song_id INT AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
	artist varchar(255) NOT NULL,
	genre VARCHAR(255) NOT NULL,
	duration VARCHAR(10) NOT NULL,
	album VARCHAR(255) NOT NULL
)
;


-- ALTER TABLE Song
-- ADD COLUMN artist varchar(255) NOT NULL;



CREATE TRIGGER tr_before_insert_guid
BEFORE INSERT
ON `User` FOR EACH ROW
BEGIN
	SET NEW.subscription_id = UUID() ;
END





