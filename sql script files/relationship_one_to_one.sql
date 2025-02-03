use isbm_db;
create table users(
user_id int primary key auto_increment, 
username varchar(30) not null
);
insert into users(username) values('Raj');
insert into users(username) values('Ajay');
insert into users(username) values('Vijay');
insert into users(username) values('Mahesh');
select * from users;







create table user_profile(
u_id int primary key,
first_name varchar(30) not null,
last_name varchar(30),
age int,
dob date,
foreign key(u_id) references users(user_id)
);

desc users;
desc user_profile;

insert into 
user_profile(u_id,first_name,last_name,age,dob) 
values(1,'Raj','Kumar',23,'1998-10-05');

insert into 
user_profile(u_id,first_name,last_name,age,dob) 
values(200,'Ajay','Patel',24,'1996-06-20');


create table person(
person_id int primary key,
fname varchar(30) not null,
dob date
); 
insert into person(person_id,fname,dob) values(100,'Steven','1990-12-05');
insert into person(person_id,fname,dob) values(101,'Lex','1992-06-15');



select * from person;
create table passport(
password_number varchar(30) primary key,
person_id int not null,
issue_date date,
expiry_date date,
foreign key(person_id) references person(person_id)
); 
alter table passport rename column password_number to passport_number;
desc passport;
insert into passport(passport_number,person_id,issue_date,expiry_date) 
values('ABC345TSV123',100,'2010-10-05','2026-12-04');

insert into passport(passport_number,person_id,issue_date,expiry_date) 
values('ADC678TSR126',101,'2010-10-09','2027-06-10');

insert into passport(passport_number,person_id,issue_date,expiry_date) 
values('ADC678TSR378',null,'2010-10-23','2028-10-01');













