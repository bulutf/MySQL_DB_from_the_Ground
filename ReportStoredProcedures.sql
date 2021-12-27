CREATE DEFINER=`root`@`%` PROCEDURE `CanliZpotify`.`ActiveUserReport`()
BEGIN
	
	select cd.channel_name, count(u.user_id) as active_user_count from `User` u 
	join Channel c on c.channel_id = u.channel_id 
	join ChannelDetail cd on cd.channel_id = c.channel_id 
	where u.is_active = 1
	group by cd.channel_name;

	
END;


CREATE DEFINER=`root`@`%` PROCEDURE `CanliZpotify`.`TipReport`(IN date1 timestamp, date2 timestamp)
BEGIN
	
	select cd.channel_name , a.username ,sum(tip_amount) 
	from Request r 
	join ChannelDetail cd on r.channel_id = cd.channel_id
	join Channel c on c.channel_id = cd.channel_id 
	join Artist a on a.artist_id = c.artist_id 
	where is_played = 1
	 and create_date >= date1
	 and complete_date <= date2
	group by cd.channel_name, a.username
;
	
END;


CREATE DEFINER=`root`@`%` PROCEDURE `CanliZpotify`.`RequestList`()
BEGIN
	select CONCAT(u.firstname, ' ', u.lastname, 'has requested: ', s.name, ' from: ', cd.channel_name) as RequestList, 
	(case when r.is_played = 1 then 'Request Completed' else 'Request Waiting' end) Status
	from Request r 
	join `User` u on r.user_id = u.user_id 
	join Song s on s.song_id = r.song_id
	join Channel c on c.channel_id = r.channel_id 
	join ChannelDetail cd on cd.channel_id = c.channel_id
	;


END;




