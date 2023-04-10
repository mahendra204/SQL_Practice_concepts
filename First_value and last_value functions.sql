create database sql_100
use sql_100

create table emp(emp_id int, emp_name varchar(20), dept_id int, salary int, magager_id int, emp_age int)

insert into emp values (1,'Ankit', 100,10000,4,39),(2,'Mohit', 100, 15000, 5,48),(3,'Vikas',100,10000,4,37),(4,'Rohit',100,5000,2,16),
(5,'Mudit',200,12000,6,55),(6,'Agam',200,12000,2,14),(7,'Sanjay',200,9000,2,13),(8,'Ashish',200,5000,2,12),(9,'Mukesh',300,6000,6,51),
(10,'Rakesh',500,7000,6,50)

select * from emp

--first and last value funtions 

select *, first_value(emp_name)over(order by emp_age) as lowest_age_emp from emp


select *, first_value(emp_age)over(order by emp_age) as lowest_age from emp


select *, first_value(emp_name)over(order by salary) as lowest_sal_emp from emp

select *, first_value(salary)over(order by salary) as lowest_sal from emp

select *, first_value(emp_name)over(partition by dept_id order by emp_age) as youngest_emp from emp

select *, first_value(emp_name)over(partition by dept_id order by emp_age desc) as youngest_emp from emp

select *, last_value(emp_name)over(partition by dept_id order by emp_age rows between current row and unbounded following) as oldest_emp from emp
order by emp_age


select *, first_value(emp_name)over(partition by dept_id order by emp_age desc) as oldest_emp from emp
order by emp_age