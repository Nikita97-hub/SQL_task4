--Order by 

Select * from Nikita_data order by age desc
Select name,age from Nikita_data order by age asc

--Limit

select name,age,qualification from Nikita_data  where age=16 
order by id asc limit 5

select * from Nikita_data where age between 20 and 27
order by age desc limit 3

--As 

select * from Nikita_data as n

Select n.name , n.location, n.qualification
	from Nikita_data as n
	where age = 16
	order by id desc
    limit 5

--group by & having

select n.qualification, sum(n.age)  as total_sum
	from Nikita_data as n
	group by n.qualification
	having count (age) > 16
    order by total_sum desc

select max(n.age) 
	from nikita_data as n
	group by n.age
	having age <27
	order by n.age asc 
	limit 5

--Sum,min,max,count,avg

Select qualification ,
	Count(n.*) as total_amout,
	max (n.age) as maximum_age,
	min(n.age) as minimum_age,
	avg(n.percentage ) as avg_percentage,
	sum(n.percentage) as total_sum
from nikita_data as n
	group by qualification
    having max(n.age) > 32