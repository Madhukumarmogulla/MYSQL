create database agri;
use agri;
create table functions( namofstu varchar(23),marks int(45), sub varchar(10),id varchar(12));
desc functions; 
insert into functions values('madhu',35,'math','123');
insert into functions values('manoj',45,'math','173');
insert into functions values('deepak',55,'math','163');
insert into functions values('sanjay',35,'math','153');
insert into functions values('varun',65,'math','143');
insert into functions values('vamshi',85,'math','133');
insert into functions values('nihal',63,'math','120');
 select * from  functions where marks = (select max(marks) from functions);
select * from  functions where marks = (select min(marks) from functions);
-- update functions set namofstu = 'sanjay' where  marks  IN
--  (slect marks  from functions where id  = '153');
truncate table functions;


-- Explanation: TRUNCATE statement removes all rows in a table without logging the individual row deletions. It uses fewer system and transaction log resources, which makes its execution fast.
-- This statement is similar to the DELETE statement without the WHERE clause.