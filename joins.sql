select * from manager;

-- Finding the second largest salary from manager table
select name,salary from manager order by salary desc limit 1,1;

-- Finding the second smallest salary from manager table
select name,salary from manager order by salary limit 1,1;

-- Finding the third largest salary from manager table
select name ,salary from manager order by salary desc limit 2,1;

-- Finding the third smallest salary from manager table
select name ,salary from manager order by salary limit 2,1;

-- Finding the fourth largest salary from manager table 
select name ,salary from manager order by salary desc limit 3,1;

-- Finding the fourth  smallest salary from manager table
select name ,salary from manager order by salary limit 3,1;

create table orders1 (order_id int primary key not null, order_date date ,customer_id int);
create table customer1(cus_id int primary key not null, cus_name varchar(30) ,contact_name varchar(20),country varchar(10));
insert into orders1 values (110,'2023-05-01',200),(111,'2023-05-02',207),(112,'2023-05-03',201),(113,'2023-05-04',204),(114,'2023-05-05',205);
insert into customer1 values (200,'Yogi','eeswar','india'),(201,'hari','konda','africa'),(204,'Tarak','dubbodu','mess'),(205,'suresh','bakodu','hyderabad'),(207,'prasanth','macha','indonatioa');
select * from orders1;
select * from customer1;

-- inner join 
select orders1.order_id,customer1.cus_name,orders1.order_date from customer1
inner join orders1 on orders1.customer_id = customer1.cus_id;

select orders1.order_id,customer1.cus_name,orders1.order_date from customer1,orders1 where orders1.customer_id = customer1.cus_id;

create table staff(id int primary key not null,name varchar(20),age int,package int);
create table payment(id int primary key not null,da_te date,staff_id int,amount int);
insert into staff values (201,'Yogi',20,20000),(202,'hari',20,30000),(203,'tarak',50,80000),(204,'suresh',28,85000);
insert into payment values(300,'2023-05-01',201,10000),(302,'2023-05-02',202,15000),(304,'2023-05-03',203,18000),(305,'2023-05-04',209,40000);
select * from staff;
select * from payment;

-- fetching details of two combained tables without using joins 
select s.id,name,age,amount from staff s,payment p where s.id=p.staff_id;


create table shipping(shipping_id int primary key not null,name varchar(20));
insert into shipping values (1234,'XXX'),(8888,'Express'),(7777,'YYY'),(6666,'ZZZ'),(8598,'SSS');
select * from orders1;
select * from customer1;
select * from shipping;

select ORDERS1.ORDER_ID,CUSTOMER1.CUS_NAME,SHIPPING.NAME FROM 
((ORDERS1 INNER JOIN CUSTOMER1 ON ORDERS1.ORDER_ID= CUSTOMER1.CUS_ID)
INNER JOIN SHIPPING ON ORDERS1.SHIPPING_ID = SHIPPING.SHIPPING_ID);
