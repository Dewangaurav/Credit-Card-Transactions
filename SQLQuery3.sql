--write a query to print the transaction details(all columns from the table) for each card type when
-- it reaches a cumulative of 1000000 total spends(We should have 4 rows in the o/p one for each card type)



with cte as
(
select *, SUM(amount) OVER (partition by card_type ORDER BY transaction_date,transaction_id) AS rolling_total
from cc
)
select * from (
select * , rank() over( partition by card_type order by transaction_date,transaction_id) as rn
from cte where rolling_total >= 1000000 ) A
where rn=1






