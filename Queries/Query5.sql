Create Table Ques5
( property int,
maxprice float,
minprice float,
avgprice float);

INSERT INTO Ques5
SELECT LISTING_ID AS PROPERTY,MAX(NEW_PRICE) AS MAXPRICE,
MIN(NEW_PRICE) AS MINPRICE, AVG(NEW_PRICE) AS AVGPRICE
FROM airbnb
GROUP BY LISTING_ID

-- select * from ques5