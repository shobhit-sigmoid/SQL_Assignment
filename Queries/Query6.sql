SELECT LISTING_ID as Property,avg(new_price) as Price FROM airbnb_temp
GROUP BY LISTING_ID
HAVING AVG(NEW_PRICE)>500