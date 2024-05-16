--write a query to find city which had lowest percentage spend for gold card type




with cte as 
(
select city, sum(case when card_type= 'Gold' then amount else 0 end)  as gold_sum_amount_city, sum(amount)  as city_total 
from cc
group by city
)
, cte2 as
(
select *, gold_sum_amount_city/city_total *100.00 as prcnt
from cte
where gold_sum_amount_city>0
)
select * from (
select * , rank() over(order by prcnt asc) as rn from cte2) A
where rn=1 

