create table car(car_no int primary key not null, car_name varchar(20),car_price int,car_quantity int);
insert into car values(112,"Tesla",120000,2);
insert into car values(113,"BMW",230000,3);
insert into car values(114,"AUDI",250000,4);
insert into car values(115,"TATA",120000,5);
insert into car values(116,"KIA",230000,2);
select * from car;
-- group by operations
select count(car_name),car_price from car group by car_price;
select count(car_name) as count_number,car_price from car group by car_price;
select count(car_name),car_price from car group by car_price having car_price>12000;
select count(*) from car group by car_price having car_price > 120000;

create table visit(entry_date date,price int,duration int);
insert into visit values ('2023-04-23',1000,15),('2023-04-28',1300,20),('2023-05-25',1500,16),('2023-05-12',2500,18);
select * from visit;
select count(entry_date),price from visit group by price having price<1500;

select extract(year from entry_date) as year,
extract(month from entry_date) as month,
extract(day from entry_date) as day,
round(avg(price),3) from visit
group by extract(year from entry_date),extract(month from entry_date),extract(day from entry_date)
order by extract(year from entry_date),extract(month from entry_date);
select * from visit;
select entry_date,round(avg(price),2) as avg_price from visit group by entry_date having count(*) = 1 order by entry_date;
select entry_date,round(avg(price),2) as avg_price from visit where duration > 15 group by entry_date having count(*) = 1 order by entry_date;



select city,count(*) as customer_city from salesman group by city;
select * from salesman;



create table employee (emp_id int primary key not null,name varchar(20),age int,country varchar(20));
insert  into employee values(100,'Yogi',30,'India');
insert  into employee values(101,'suresh',40,'America');
insert  into employee values(102,'hari',45,'US');
insert  into employee values(103,'tarak',93,'Canada');
insert  into employee values(104,'sahail',42,'US');
insert  into employee values(105,'Konda',50,'India');
select * from employee;

select count(country) as count,country as country_number from employee group by country having count(country) = 2 order by country ;
select count(age),age from employee group by age having count(age) > 50 order by age;
select country,count(country) from employee group by country having max(age) >30;
select country,count(country) from employee group by country having avg(age) >30;
select country,count(country) from employee group by country having min(age) >=30;


create table manager(id int primary key not null, name varchar(20),gender varchar(5),salary int);
alter table manager add column age int;
select * from manager;
insert into manager values(1101,'Yogi','male',25000);
insert into manager values(1102,'tarak','male',32000,24);
insert into manager values(1103,'hari','fema',40000,20);
insert into manager values(1104,'suresh','fema',55000,35);
insert into manager values(1105,'sahail','male',25000,23);
update manager set age = 23 where id = 1101;

select name,sum(salary) as total_salary from manager group by name having sum(salary) > 25000 order by name;
select age from manager group by age having count(age) >= 2;
insert into manager values(1106,'konda','femal',56000,24);
select age from manager group by age having count(age) >= 1;
select gender,max(salary) as maximum_salary from manager group by gender having max(salary) > 40000;

DELIMITER //
create procedure GetManagerInfo()
	BEGIN
		select * from manager;
	END //

call GetManagerInfo();

DELIMITER //
create procedure GetManagerAge()
	BEGIN
		select * from manager where age between 20 and 50;
	END //
    
call GetManagerAge();

DELIMITER //
create procedure GetManagerAge1()
	BEGIN
		select * from manager where age between 20 and 50;
	END //

call GetManagerAge1();

select name from manager order by rand() limit 1;-- select the name randomly


