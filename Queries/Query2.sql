Create Table airbnb_temp
(listing_id int,
date date,
available varchar(255),
price varchar(255),
new_price int,
rownum int);

INSERT INTO airbnb_temp
select listing_id as property,date,available,price,new_price,row_number() over(partition by listing_id, date, available order by listing_id) as rownum from airbnb
order by listing_id,date;

SET SQL_SAFE_UPDATES = 0;
Delete from airbnb_temp where rownum>1


