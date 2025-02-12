use dataset;
create table departments(
dept_id int primary key,
dept_name varchar(30) not null
);
insert into departments values(100,'HR');
insert into departments values(101,'Marketing');
insert into departments values(102,'IT');
select * from departments;

create table employees(
emp_id int primary key,
emp_name varchar(30),
salary float,
dept_id int,
foreign key(dept_id)  references departments(dept_id)
);
insert into employees values(1,'Raj',55000,100);	
insert into employees values(2,'Ravi',52000,101);
insert into employees values(3,'Ajay',45000,102);
insert into employees values(4,'Vijay',43000,101);
insert into employees values(5,'Lokesh',35000,101);
insert into employees values(6,'Mahesh',52000,102);
select * from employees;

#Find Employee name whose salary is grether than the average salary of 
#all employee
select avg(salary) from employees;
select emp_name from employees where salary > 47000;

# same output using sub query 
select emp_name from employees where salary > 
(select avg(salary) from employees);

#Find Employee name whose salary is grether than the average salary of that 
#employee working in IT Department;
select emp_name from employees where salary >
(select avg(e.salary) from employees e inner join departments d 
on e.dept_id=d.dept_id and d.dept_name='IT');

select emp_name from employees where salary > 
(select avg(salary) from employees where dept_id=
(select dept_id from departments where dept_name='IT'));

# find the department name where the average salary of each deptment msut be 
#above ie 45000 

# Hr Dept Average is 55000
# Marketing Dept Average is 

select dept_id,avg(salary) from employees group by dept_id;

select d.dept_name from departments d inner join employees e 
on d.dept_id=102 and d.dept_id=e.dept_id and e.salary>45000;

select dept_name from departments where dept_id in 
(select dept_id from employees group by dept_id having avg(salary) >45000);


# display employee whose salary is grether than any one of the employee 
# working in IT departments;
select dept_id from departments where dept_name='IT';
select salary from employees where dept_id=102;
select emp_name from employees where salary > 45000;

# to solve with aggregate function 
select emp_name from employees where salary > 
(select min(salary) from employees where dept_id = 
(select dept_id from departments where dept_name='IT'));

# with multi row any keyword 
select emp_name from employees where salary > any
(select salary from employees where dept_id=
(select dept_id from departments where dept_name='IT'));


# display employee whose salary is grether than all employee 
# working in IT departments;
select dept_id from departments where dept_name='IT';
select salary from employees where dept_id=102;
select emp_name from employees where salary > 52000;

# to solve with aggregate function 
select emp_name from employees where salary > 
(select max(salary) from employees where dept_id = 
(select dept_id from departments where dept_name='IT'));

# with multi row any keyword 
select emp_name from employees where salary > all
(select salary from employees where dept_id=
(select dept_id from departments where dept_name='IT'));
