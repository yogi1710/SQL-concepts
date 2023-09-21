create table student(ID int primary key not null ,Std_Name varchar(20) not null ,Marks int not null);
insert into student values (3211,"Dharan SaI",85),(3215,"Konda Hari",95),(3255,"Tarak reddy",55),(3263,"Yogi",90),(3213,"Gowtham",80),(3251,"Suresh",85),(3250,"Suri babu",87),(3271,"Macha",99);
select * from student where marks >= 80;
select * from student where marks <= 80;
select * from student where std_name = "tarak reddy";
select * from student where marks != 95;
select * from student where marks = 95;
select * from student where marks <> 95;  -- <> is similar to != ,result is same 
select * from student where marks between 50 and 99 ;
select * from student where marks between 50 and 99 order by marks;--  by default shows assending order 
select * from stundet where marks between 50 and 99 order by marks asc;-- To specify ,we can even use asc to order by asccending order
select * from student where marks between 50 and 99 order by marks desc;--  shows the decending order by giving desc 
select * from student where not marks = 91;-- we can even use != and <> and not operators 
select count(distinct marks) from student;
select * from student where not marks = 85 and not marks = 95;
show databases;-- to show all the databases in the workbanch
