create database FOODBALL;
create table foodball_venue (venue_id int primary key not null,venue_name varchar(20),city_id int,capacity int);
select * from foodball_venue;

insert into foodball_venue values (20001,'France',10003,42115);
insert into foodball_venue values (20002,'Paris',10004,32564);
insert into foodball_venue values (20003,'America',10005,51545);
insert into foodball_venue values (20004,'India',10006,32564);
insert into foodball_venue values (20005,'Paris',10007,45216);
insert into foodball_venue values (20006,'France',10008,45216);
insert into foodball_venue values (20007,'America',10009,42115);
insert into foodball_venue values (20008,'Paris',10010,32654);
insert into foodball_venue values (20009,'India',10011,45216);
insert into foodball_venue values (20010,'Canada',10012,51545);

-- Count the number of venues of the football world cup?
select count(venue_name) from foodball_venue;

-- List all the venue names and capacities in the format of “Location” and “Volume”?
select venue_name as Location ,capacity as Volume from foodball_venue;
 
 -- Delete all the details where venue_name is equal to “Canada” ?
delete from foodball_venue where venue_name ='Canada';
