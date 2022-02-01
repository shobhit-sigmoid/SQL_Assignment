Create table ques3
(
listing_id int,
available varchar(255),
unavailable varchar(255),
total int,
available_days_percentage float
);

INSERT INTO ques3
select listing_id,SUM(available = 't') AS Available,
SUM(available = 'f') AS Unavailable,
Count(*) as Total,
(SUM(available = 't')/count(*))*100 as Available_Fraction
from airbnb_temp
group by listing_id

-- select * from ques3
