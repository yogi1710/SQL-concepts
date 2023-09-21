-- Find all the rows where rsession is equal to java
select * from RGM1 where RSESSION = "JAVA";
select ID, NAME_,RSESSION from RGM1 where RSESSION = "JAVA";
select * from rgm1 where RSESSION = "JAVA" and college = "RGMCET";
select NAME_ from rgm1 where RSESSION = "JAVA" and college = "RGMCET";
select * from rgm1;

-- Operations using where operator
select * from rgm1 where ADDRESS = "kurnool";
select * from rgm1 where NAME_ like "S%";-- % means ,whatever may be 
select * from rgm1 where NAME_ like "SA%";
select * from rgm1 where ADDRESS like "%L";
select * from rgm1 where ADDRESS like "%oo%";
select * from rgm1 where NAME_ like "_M%";-- _ means it might be any single character in the underscore position 
select * from rgm1 where NAME_ not like "s%";-- will not show the names which are not starting with s (we use not like)
select * from rgm1 where NAME_ not like "_M%";
select * from rgm1 where ADDRESS in ("HYDERABAD","KURNOOL");
select * from rgm1 where college in ("RGMCET","NARAYANA");
select * from rgm1 where college = "RGMCET" or "NARAYANA";
select distinct address from rgm1;
select count(distinct address) from rgm1;
select * from rgm1 limit 3;
select * from rgm1 where address = "Hyderabad" limit 2;
select * from rgm1 order by name_ limit 3;
select * from rgm1 order by address;
select * from rgm1 order by address limit 5;
select count(address),address from rgm1 group by address;
SELECT * FROM RGM1 WHERE ADDRESS="HYDERABAD" ORDER BY "hyderabad" LIMIT 3;
select * from rgm1 where COLLEGE = "Rgmcet" order by id limit 5;
select * from rgm1 where college = "rgmcet" order by id desc limit 5;

update rgm1 set name_ = "Yogi" where contact_num = 1563456;
update rgm1 set rsession = "java" , address = "hyderabad" where contact_num = 1563456;

create table test(id int primary key not null,name_ varchar(20) not null,college varchar(20) not null,rsession varchar(10) not null,contact_num int not null,address varchar(20) not null);
select * from test;
insert into test select * from rgm1;-- values form rgm1 will be inserted into test,before adding we have empty table,the no.of colums must be same in the two tables 
-- INSERT INTO test select * from herovired.rgm1;
delete from test where name_ = "Yogi" ;
drop table test;

alter table rgm1 rename column name_ to std_name;
select * from rgm1;
alter table rgm1 rename to RGM;
select * from rgm;
alter table rgm rename column id to std_id;

-- create and delete a database 
create database suns;
drop database suns;

-- Operations on particular column
select * from rgm;
alter table rgm add Branch_name varchar(10);-- add new column
update rgm set branch = "cseds" where std_id = 20092;-- update the values in the table by specifing any condition
alter table rgm add trail varchar(5) default "YOGI";-- add new column and set the values as default 
alter table rgm modify column trail varchar(20);-- modify the data type i.e in begging it was varchar(5) ,we can modify it into any datatype (int,float) or we can even modify the size 
update rgm set trail = "ESWAR" where rsession = "java";-- update the values to eswar where rsession is java 
update rgm set branch = "CSE" where address = "kurnool";-- update operation
alter table rgm drop branch_name;-- drop the particular column
-- Agrigate operators ( min ,max,sum ,count,avg)
alter table rgm add marks int default 50;
select sum(marks) from rgm;
select count(marks) from rgm;
select avg(marks) from rgm;
select min(marks) from rgm;
select max(marks) from rgm;
select sum(marks) as total from rgm;-- we can get the table name as we want in the output