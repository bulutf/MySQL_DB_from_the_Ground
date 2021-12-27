CREATE PROCEDURE CanliZpotify.CreateUser(IN user_id INT, user_type_id INT, username VARCHAR(255), firstname VARCHAR(255), lastname VARCHAR(255), birthdate DATE, address VARCHAR(255), city VARCHAR(255), channel_id INT, zipcode INT)
BEGIN
	
	INSERT INTO `User` VALUES (user_id, user_type_id, username, firstname, lastname, birthdate, address, city, channel_id, zipcode);

	SELECT 'New user has been created!';
	
	-- BU SP AYNI ZAMANDA SUBSCRIPTION TABLOSUNU DA DOLDURMALI


END



CALL CanliZpotify.CreateUser(NULL, 1, 'bulucyus', 'bulut', 'ficici', '1997-06-21', 'some rich appartment', 'istanbul', 31, 65555);


select * from `User` u ;



CREATE PROCEDURE CanliZpotify.CreateRequest(IN request_id BIGINT, user_id INT, channel_id INT, song_id INT, create_date TIMESTAMP, complete_date TIMESTAMP, tip_amount DECIMAL(25,2))
BEGIN
	
	INSERT INTO CanliZpotify.Request VALUES(request_id, user_id, channel_id, song_id, create_date, complete_date, tip_amount);

	SELECT 'Request has been created!';

END



CALL DropAllTables;

CALL CreateTables;

CALL CreateRelations;