use isbm_db;
show tables;
select * from employee;
select * from products;
select * from customers;
desc customers;
select * from customers order by Company asc;
select * from customers order by Company desc;
select * from customers order by SrNo; 
select * from customers order by SrNo desc; 
drop table customers;

select count(*) from customers group by Company having count(*) >=2;

select count(*) from customers group by Country having count(*) >=5;
select country,srno,customer_id,first_name from customers order by country;
select country,srno,customer_id,first_name from customers order by country asc, srno asc;


 
