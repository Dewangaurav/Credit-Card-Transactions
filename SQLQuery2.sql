--write a query to print highest spend month and amount spent in that month for each card type


with cte as (
select card_type, datename(month,transaction_date) as mnth, sum(amount)  as sum_amount
from cc
group by card_type,datename(month,transaction_date)
)
select * from (
select *
, rank() over( partition by card_type order by sum_amount desc) as rn
from cte) A
where rn=1











