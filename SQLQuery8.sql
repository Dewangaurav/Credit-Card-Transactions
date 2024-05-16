--during weekends which city has highest total spend to total no of transcations ratio



with cte as 
(
select city, sum(amount)*1.0/count(*) as ratio
from cc
where datepart(weekday,transaction_date) in (1,7)
group by city
)
select top 1 *
from cte
order by ratio desc