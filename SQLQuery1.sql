write a query to print top 5 cities with highest spends and their percentage contribution of total credit card spends

with cte as 
(
select city, sum(amount) as sum_amount_city
from cc
group by city
)
,cte2 as(
select *, round(sum_amount_city/(select sum(amount) from cc)*100.00,2) as prcnt, row_number() over(order by sum_amount_city desc) as rn
from cte
)
select city, prcnt
from cte2
where rn<=5

