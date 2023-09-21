create database ONLINE_CONSULTAION;

create table APPOINMENT(APP_ID int primary key,APP_DATE date not null,DOCTOR_ID varchar(20) unique key);

create table DOCTOR(DOC_ID int primary key,NAME varchar(20) not null,SPECIFICATION varchar(20) not null,constraint foreign key(ID) references APPOINMENT(DOCTOR_ID));

create table PATIENT(PATIENT_ID int primary key,PATIENT_NAME varchar(20) not null);

create table REVIEWS(PATIENT_ID int primary key not null,REVIEW int not null);

select * from doctor;
