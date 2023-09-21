create database employee;
create table employee_details(emp_id int primary key not null,emp_name varchar(20),job_name varchar(10),
manager_id int,hire_date date,salary int,dep_id int);
select * from employee_details;
insert into employee_details values (201,'Hari','clerk',3215,'2023-05-09',25000,150);
insert into employee_details values (202,'Tarak','Team lead',3255,'2023-04-09',45000,151);
insert into employee_details values (203,'Suresh','Employee',3251,'2023-04-09',35000,152);
insert into employee_details values (204,'Sami','Employee',3242,'2023-05-09',35000,153);
insert into employee_details values (205,'Yogi','Manager',3263,'2023-03-10',55000,154);
insert into employee_details values (206,'Prasanth','Employee',0341,'2023-04-15',35000,155);
insert into employee_details values (207,'Dharan','Team lead',3211,'2023-07-23',40000,156);
insert into employee_details values (208,'Gowtham','clerk',3213,'2023-08-18',25000,157);
insert into employee_details values (209,'Suri','Employee',3250,'2023-01-25',35000,158);
insert into employee_details values (210,'Deva','Manager',3210,'2023-11-17',55000,159);

-- Find the salaries of all the employees from the “Employee Details” table?
select salary from employee_details;

-- Find the unique designations of the employees from the table?
select distinct(job_name) from employee_details;

-- Change the salary where the emp_name is “Prasanth”?
update employee_details set emp_name = 'Macha' where emp_id = 206;

select * from employee_details;

