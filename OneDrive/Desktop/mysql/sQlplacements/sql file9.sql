create database ERD_diagram;
use ERD_diagram;
create table connections(productlines varchar(30),products varchar(30),oderdatails varchar(30),employees varchar(30), customers varchar(30),orders varchar(30),offices varchar(30),payments varchar(30));
desc connections;
create table relations( productlines varchar(45),hi varchar(23), hello varchar(43),integere int(90),jio int(34));
desc relations;

insert into  connections values('productLine','productCode','ordernumber','employeeNumber','customerNumber','orderNumber','officeCode','customerNumber');
insert into  connections values('textdes','productname','procode','employeeNumber','cust\gtttomerNumber','orderNumber','officeCode','customerNumber');
insert into  connections values('htmldes','productline','orde','employeeNumber','customerNumber','orderNumber','officeCode','customerNumber');
insert into  connections values('image','productscales','number','employeeNumber','customerNumber','orderN\\\ber','officeCodefrf','customerNumber');
insert into  connections values('pho','productCode','ornum','employeeNumber','customerNtmber','orderNumber','officeCode','customerNumber');
insert into  connections values('uctLine','productvendor','mber','employeeNumber','customerNumber','orderNumber','officeCoeerede','cus666rNumber');
insert into  connections values('proLie','productDesc','ordernum','employeeNumber','customerNumber','orderNumber','offgtttode','cus666erNumber');
insert into  connections values('pduLine','quality','ordmber','employeeNumber','custotttNumber','orderNurt5tber','officeCode','customerNumber');
insert into  connections values('pructne','dtock','ordernumber','employeeNumber','customerNumber','ord455Number','officeCode','customerNumber');
insert into  connections values('proine','buy','offber','employeeNumber','customerNumber','orderNumber','officeCode','customerNumber');
insert into  connections values('proe','price','ordernumber','employeeNumber','customerNumber','orderNumber','officeCode','custt5trNumber');
insert into  connections values('Line','msrp','rrrnumber','employeeNumber','customerNumber','orderNttter','officeCode','customerNumbe55r');
insert into  connections values('pro','Code','rernumber','employeeNumber','customerNumber','orderNumet45r','officeCode','customerNgyhum6ber');
select * from connections;

-- insert into  relations values('employeeNumber','customerNumber','orderNumber','320',235);
-- insert into  relations values('employeeNumber','cust\gtttomerNumber','orderNumber',3245,546);
-- insert into relations values('employeeNumber','customerNumber','orderNumber',789,458);
-- insert into   relations values('employeeNumber','customerNumber','orderN\\\ber',0989,213);
-- insert into   relations values('emplumber','customerNtmber','orderNumber',0945,2156);
-- insert into   relations values('employeeNumber','customerNumber','orderNumber', 56478,4356);
-- insert into   relations values('employeeNumber','customerNumber','orderNumber','offgtttode',5675,3768 );
insert into  relations values((223,50000),(21,30000),(21,10000),(34,90000));
select * from relations;
-- NESTED QUIERY
select * from  connections where productlines
IN ();
CREATE TABLE COO_REL(ID varchar(23),QE varchar(34),QM varchar(34), wer int(45),tre int(45));

