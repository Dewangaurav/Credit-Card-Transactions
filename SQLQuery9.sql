--which city took least number of days to reach its 500th transaction after the first transaction in that city



with cte as
	(
	select city, row_number() over(partition by city order by transaction_date, transaction_id) as rn, transaction_date
	from cc
	group by city, transaction_date, transaction_id
	)

	select city, min( transaction_date) as first_transaction, max(transaction_date) as the_500th_transaction, datediff(day,min( transaction_date),  max(transaction_date)) as no_of_days
	from cte
	where  rn in (1,500)
	group by city
	having count(*)= 2
	order by no_of_days









