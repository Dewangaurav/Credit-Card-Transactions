--which card and expense type combination saw highest month over month growth in Jan-2014



with cte as 
(
select card_type, exp_type, sum(amount) as Amount, format(transaction_date, 'yyyy MM') as yr_mnth
from cc
group by card_type, exp_type, format(transaction_date, 'yyyy MM')
)
, cte2 as 
(
select *,lag(Amount,1) over(partition by card_type, exp_type order by yr_mnth) as prev_mnth_Amount
from cte
)
select  top 1 * , (Amount-prev_mnth_Amount) as mom_growth
from cte2
where prev_mnth_Amount is not null and yr_mnth='2014 01'
order by mom_growth desc




