use employee;
-- find the first and  latest salary of the employ
select y.emp_no,y.salary,100*(y.salary-y.f_s)/y.f_s
from(
select *,lead(x.salary) over(partition by emp_no order by to_date) as c_s,
lag(x.salary) over(partition by emp_no order by to_date) as f_s
from(
select *, rank() over(partition by emp_no order by to_date ) as rnk,
count(*) over (partition by emp_no) as cnt
from salaries )x
 where   x.rnk = 1 or cnt - x.rnk=0)y
 where year(to_date)=9999
 limit 100;
 
 -- find n
 select *, count(*) over(partition by emp_no
 order by to_date rows between unbounded preceding and unbounded following) 
 as cnt
  from salaries
  limit 100;
  
select *,first_value(salary) over(partition by emp_no order by to_date)
as f_V,
last_value(salary) over(partition by emp_no order by to_date) as l_v
from salaries limit 100;



-- find the moving average salary of the winndow with frame =3 (rows 3)
select *,avg(salary) over(partition by emp_no order by to_date
rows between 1 preceding and 1 following) as vgsalary 
from salaries limit 100;