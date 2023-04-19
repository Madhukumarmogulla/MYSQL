create database demodata;
use demodata;
create table product(prod_id varchar(25),cust_id int, cust_name varchar(25),prod_name varchar(25));
desc product;
alter table product add constraint primary key(prod_id);
insert into product values('123dfw','12345','mkr','kitkat');
insert into product values('131dfr','14543','dsr','sneakers');
insert into product values('134dfg','15640','bmw','cruchmunch');
 select * from product;
 update product set  prod_id = "87910" where cust_name = "mkr";
 select * from product where prod_name= "kitkat";
 create table customer values(prod_code int primary key, prod varchar(25));
 # Aaggregate functions 
 #average
 #maximum
#minimum
 #count
 #distint
 #group-concat
 
 