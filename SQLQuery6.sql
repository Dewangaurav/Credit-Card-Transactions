--write a query to find percentage contribution of spends by females for each expense type





select exp_type, sum(case when gender= 'F' then amount else 0 end) as f_contribution, sum(amount) as total_amount, sum(case when gender= 'F' then amount else 0 end)/ sum(amount) *100 as prcnt
from cc
group by exp_type
order by prcnt


