use isbm_db;
desc department;
desc employee;
insert into department values(5,'Maths','Mumbai');
select * from employee;
select * from department;
# employee table and department table relationship 
# in one department many empoyee working ie one to many
# inner join 
select e.ename,e.age,d.dname,d.city from employee e inner join department 
d on e.did = d.did; 
# left outer join 
select e.ename,e.age,d.dname,d.city from employee e left outer join department 
d on e.did = d.did;
# right outer join 
select e.ename,e.age,d.dname,d.city from employee e right outer join department 
d on e.did = d.did; 

# join concept on one to one relationship 
desc person;
desc passport;
select p.fname,pp.passport_number from person p inner join passport pp
on p.person_id=pp.person_id;
select concat(p.fname,' passport number is ',pp.passport_number) 
as person_details from person p inner join passport pp
on p.person_id=pp.person_id;

select concat('raj','deep');

create table employeeDetails(
empid int primary key,
ename varchar(30), 
age int, 
salary float,
Designation varchar(40),
managerId int,
foreign key(managerId) references employeeDetails(empid)
); 
drop table employeeDetails;

desc employeeDetails;
insert into employeeDetails(empid,ename,age,salary,Designation,managerId)
values(100,'Steven',56,68000,'CEO',null);
insert into employeeDetails(empid,ename,age,salary,Designation,managerId)
values(101,'Lex',45,55000,'Manager',100);
insert into employeeDetails(empid,ename,age,salary,Designation,managerId)
values(102,'John',36,45000,'TeamLeader',101);
insert into employeeDetails(empid,ename,age,salary,Designation,managerId)
values(103,'Neena',32,25000,'Developer',102);
insert into employeeDetails(empid,ename,age,salary,Designation,managerId)
values(104,'Raj',26,18000,'Tester',102);
insert into employeeDetails(empid,ename,age,salary,Designation,managerId)
values(105,'Ramu',35,10000,'Helper',101);
select * from employeeDetails;


