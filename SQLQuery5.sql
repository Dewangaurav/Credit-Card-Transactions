--write a query to print 3 columns:  city, highest_expense_type , lowest_expense_type (example format : Delhi , bills, Fuel)


with cte as 
(
select city, exp_type, sum(amount) as total_exp
from cc
group by city, exp_type
)
, cte2 as
(
select * , row_number() over(partition by city order by total_exp desc) as rn_max, row_number() over(partition by city order by total_exp ) as rn_min
from cte 
)
select city, max(case when rn_max= 1 then exp_type end) as highest_expense_type, max(case when rn_min= 1 then exp_type end) as lowest_expense_type
from cte2
group by city


