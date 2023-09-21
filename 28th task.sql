create table salesman(
salesman_id int primary key not null, salesman_name varchar(20) not null,city varchar(20) not null,commission float not null);
insert into salesman values (5001,"James Hoog","New York",0.15),
(5002,"Nali knite","Paris",0.13),(5003,"Pit Alex","London",0.11);
select * from salesman;
select salesman_name,commission from salesman;

create table orders(ord_no int primary key not null,purch_amt float not null, ord_date date not null, customer_id int not null, salesman_id int not null );
insert into orders values(70001,150.5,"2012-10-05",3005,5002),(70002,270.65,"2012-09-10",3001,5001);
insert into orders values(70009,65.26,"2012-10-05",3002,5005);
select * from orders;
select * from orders order by ord_no;
