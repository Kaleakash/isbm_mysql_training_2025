use isbm_db;
create table studentInfo(
sid int primary key,
sname varchar(30) not null
);
insert into studentInfo(sid,sname) values(100,'Ravi');
insert into studentInfo(sid,sname) values(101,'Ramesh');
insert into studentInfo(sid,sname) values(102,'Raj');
insert into studentInfo(sid,sname) values(103,'Raju');

select * from studentInfo;
create table skillSetInfo(
ssid int primary key,
skillname varchar(30) not null
); 
insert into skillSetInfo(ssid,skillname) values(1000,'C');
insert into skillSetInfo(ssid,skillname) values(1001,'C++');
insert into skillSetInfo(ssid,skillname) values(1002,'Java');
insert into skillSetInfo(ssid,skillname) values(1003,'Python');
select * from skillSetInfo;

#relationship table 
create table studentSkillSetInfo(
sssid int primary key auto_increment,
sid int, 
ssid int,
foreign key(sid) references studentInfo(sid),
foreign key(ssid) references skillSetInfo(ssid)
);
insert into studentSkillSetInfo(sid,ssid) values(100,1000);
insert into studentSkillSetInfo(sid,ssid) values(101,1000);
insert into studentSkillSetInfo(sid,ssid) values(102,1000);
insert into studentSkillSetInfo(sid,ssid) values(103,1000);
insert into studentSkillSetInfo(sid,ssid) values(100,1002);
insert into studentSkillSetInfo(sid,ssid) values(100,1003);
insert into studentSkillSetInfo(sid,ssid) values(102,1003);
insert into studentSkillSetInfo(sid,ssid) values(103,1002);

select * from studentSkillSetInfo;

