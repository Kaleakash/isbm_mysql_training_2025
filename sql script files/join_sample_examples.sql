use isbm_db;
create table sample1(id int, name varchar(30), age int);
insert into sample1 values(100,'raj',21);
insert into sample1 values(101,'ramesh',22);

create table sample2(accno int, name varchar(30), amount float);
insert into sample2 values(1,'raj',500);
insert into sample2 values(2,'ravi',1000);

select * from sample1;
select * from sample2;

#cross join 
select id,age,accno,amount from sample1,sample2;
select id,age,name,accno,amount from sample1,sample2;
select id,age,sample1.name,accno,amount from sample1,sample2;
select sample1.id,sample1.age,sample1.name,sample2.name,sample2.accno,
sample2.amount from sample1,sample2;
select s1.id,s1.age,s1.name,s2.accno,s2.name,s2.amount from 
sample1 s1, sample2 s2;

# inner join 
select s1.id,s1.age,s1.name,s2.accno,s2.amount from sample1 s1 
inner join sample2 s2 on s1.name=s2.name;

# left outer join 
select s1.id,s1.age,s1.name,s2.accno,s2.amount from sample1 s1 
left outer join sample2 s2 on s1.name=s2.name;

# right outer join 
select s1.id,s1.age,s2.name,s2.accno,s2.amount from sample1 s1 
right outer join sample2 s2 on s1.name=s2.name;

# full outer join
select s1.id,s1.age,s1.name,s2.accno,s2.amount from sample1 s1 
left outer join sample2 s2 on s1.name=s2.name
union 
select s1.id,s1.age,s2.name,s2.accno,s2.amount from sample1 s1 
right outer join sample2 s2 on s1.name=s2.name;







