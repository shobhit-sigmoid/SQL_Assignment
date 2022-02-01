select start_time,end_time,DATEDIFF(end_time,start_time)
as time_period from (select 
min(date) start_time,
max(date) end_time
from airbnb)as temp