create database exercise;
create table customer (id int primary key not null,name varchar(20),city varchar(30),grade int,salesman_id int);
select * from customer;
insert into customer values(101,'Yogi','delhi',98,11),(102,'HAri','kurnool',56,12),(103,'tarak','nandyal',98,13),(104,'macha','delhi',56,14),(105,'sahail','nandyal',89,15),(106,'suresh','kurnool',78,16),(107,'likhith','delhi',92,17),(108,'jsck','kurnool',88,18),(109,'suri','panyam',84,19),(110,'gouch','delhi',58,20);

-- Write the sql query to find the details of the customer whose grade are above 50?
select * from customer where grade > 50;

-- write a sql query to find the details of the customer whose grade are above and equal to 50?
select * from customer where grade >= 50;

-- write a query to find the details of customer whose grade are above 50 and equal to 50 in ascnding order?
select * from customer where grade >= 50 order by grade;-- default asc
select * from customer where grade >= 50 order by grade desc;

-- write a sql query to find the details of the customer who live in delhi and grade = 58?
select * from customer where city = 'delhi' and grade = 58;

-- write a sql query to find the customer names who are from kurnool city or have a grade above than 89
select name from customer where city = 'kurnool' or grade >89;

-- write a sql query to find the details of the customer who are either from nandyal city or who do not have a grade more than 75?
select * from customer where city = 'nandyal' or not grade > 75;
select * from customer where city = 'nandyal' or grade <= 75;

-- write a sql query to find the details of the customer who do not belong to delhi city or have a grade that excceds 89?
select * from customer where not city = 'delhi' or grade > 89;


