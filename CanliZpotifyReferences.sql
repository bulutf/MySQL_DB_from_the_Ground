
ALTER TABLE `User`
ADD
CONSTRAINT FK_User_Subscription
	FOREIGN KEY (subscription_id) REFERENCES Subscription(subscription_id)
;

ALTER TABLE `User`
ADD
CONSTRAINT FK_User_Channel
	FOREIGN KEY (channel_id) REFERENCES Channel(channel_id)
;

	
ALTER TABLE Subscription
ADD	
CONSTRAINT FK_Subscription_SubscriptionType
	FOREIGN KEY (subscription_type_id) REFERENCES SubscriptionType(subscription_type_id)
;


ALTER TABLE Channel
ADD
CONSTRAINT FK_Channel_Request
	FOREIGN KEY (request_id) REFERENCES Request(request_id)
;


ALTER TABLE Channel
ADD
CONSTRAINT FK_Channel_Artist
	FOREIGN KEY (artist_id) REFERENCES Artist(artist_id)
;


ALTER TABLE Request 
ADD
CONSTRAINT FK_Request_User
	FOREIGN KEY (user_id) REFERENCES `User`(user_id)
;


ALTER TABLE Request
ADD
CONSTRAINT 
	FOREIGN KEY (song_id) REFERENCES Song(song_id)
;


ALTER TABLE ChannelDetail
ADD
CONSTRAINT FK_ChannelDetail_Channel
	FOREIGN KEY (channel_id) REFERENCES Channel(channel_id)
;




-- ALTER TABLE `table_name` DROP FOREIGN KEY `id_name_fk`;