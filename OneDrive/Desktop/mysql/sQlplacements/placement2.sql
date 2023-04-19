use employee;
 select * from degvpartments limit 100;
 select * from   employees limit 10;
 select * from dept_emp limit 100;
 
 -- find department name wise number of employees
 select dept_name, count(*)   
 from departments  
 inner join dept_emp 
 on  departments.dept_no = dept_emp.dept_no 
 where year(to_date) =9999 group by  dept_name order by count(*) desc;
 
 
 select dept_no,count(emp_no) from employees order by dept_no;
 
select * from dept_emp where year(to_date) = 9999;
select dept_no,count(*) as numberofemployees 
from dept_emp  group by dept_no order by count(*) desc;

select * from salaries;
select  emp_no,salary from salaries where year(to_date) = 9999;

-- find department name wise avg salary

 select dept_name, count(*)   
 from departments  
 inner join dept_emp 
 on  departments.dept_no = dept_emp.dept_no 
 where year(to_date) =9999 group by  dept_name order by count(*) desc;
 

select  dept_name ,avg(salary) as average_salary 
from  departments a 
inner join  dept_emp b 
on a.dept_no = b.dept_no 
inner join salaries c 
on b.emp_no = c.emp_no and year(c.to_date) =9999 
group by a.dept_name 
order by avg(c.salary) desc;

select * from titles where title = "manager";

-- find the number of managers for each department
 select dept_no,count(*)
 from dept_manager where year(to_date) = 9999 
 group by  dept_no;
 
 -- find

  select concat(a.first_name, " ", a.last_name) as name  
  from  employees  a 
  inner join  salaries b 
  on  a.emp_no = b.emp_no and year(b.to_date) = 9999
  inner join dept_manager c 
  on b.emp_no = c.emp_no and year(c.to_date)=9999 
  order by b.salary desc
   limit 1;
   
   
   # find those departments with avg salary more than 50000
  select * from departments;
  select * from salaries limit 100;
  
  select a.dept_no, avg(b.salary) as averageSalary from dept_emp a
  inner join salaries b on
  a.emp_no = b.emp_no   and year(b.to_date)=9999  
  group by dept_no
  having avg(b.salary) > 70000
  order by avg(b.salary) desc ;
  
   # find the  those employees earning  more than the avg salary of d008
   -- my code 
   
   select *
   from salaries a
   inner join dept_manager b on a.emp_no = b.emp_no
   where a.salary > (select avg(a.salary) as avgsalary 
   from salaries where b.dept_no = "d008" ) limit 10;
   
   -- find the employees with 5th highest slay for d008
    select *
    from  dept_emp  a 
    inner join salaries b 
    on a.emp_no = b.emp_no and year(b.to_date) =9999
    and a.dept_no = "d008" 
	order by b.salary  desc
    limit 4,1;
    
    
    -- find the number of employees with salary greater than the salary of the 3rd highest salary of d002
	select count(emp_no) as countofemployee 
    from salaries
    where salary >(select b.salary
    from  dept_emp  a 
    inner join salaries b 
    on a.emp_no = b.emp_no and year(b.to_date) = 9999
    and a.dept_no = "d002"  order by b.salary desc
    limit 2,1) and year(to_date)=9999;