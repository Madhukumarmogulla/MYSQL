
create schema market_star_schema;
use market_star_schema;
create table india(name varchar(12), age int(2), department varchar(15), salary bigint);
desc india;
insert into india values('ramesh',20,'Finance',50000);
insert into india values('deepesh',25,'Finance',50000);
insert into india values('suresh',23,'Finance',50000);
insert into india values('ram',28,'Finance',50000);
insert into india values('pardeep',22,'Finance',50000);
 select department, avg(salary) from india group by department;
 -- here we can get out put as single value from the depart based on the average salary
 -- ADVANCED SQL has approach to print the values in the another columns using window functions
 
 select name,age,department,salary,avg(salary),over(partition by department )ORDER BY salary) as new_column from india;