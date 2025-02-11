create database dataset;
use dataset;
select * from salesreport;
# display all sales report order by OrderDate
select * from salesreport order by OrderDate desc;
# display all sales report order by OrderDate with top 5
select * from salesreport order by OrderDate desc limit 5;
# display starting 2 records 
select * from salesreport limit 2;
# to check totalRevenue 
select sum(totalRevenue) as totalRevenue from salesreport;
# to check totalProfit
select sum(totalProfit) as totalProfit from salesreport;
# to check totalProfilt by Region 
select Region, sum(totalProfit) as totalProfit from salesreport group by Region;
# to check totalProfilt by Channel  
select SalesChannel, sum(totalProfit) as totalProfit from salesreport group by SalesChannel;
# total number item by itemType 
select ItemType, count(*) totalNumber from salesreport group by ItemType;
 # total number of item 
select count(*) totalNumber from salesreport;
# total number item by itemType and there total must be > 75;
select ItemType, count(*) totalNumber from salesreport group by ItemType having count(*) >75;
# total number item by itemType and there total must be > 75 and ItemType name must ascending order 
select ItemType, count(*) totalNumber from salesreport group by ItemType 
having count(*) >75 order by ItemType asc;

# working with banking traction details. 
select * from banktransaction;
# total deposits 
select sum(Deposits) TotalDeposite from banktransaction;
# total deposits date wise 
select DateInfo, sum(Deposits) TotalDeposite from banktransaction group by DateInfo;
# total deposits media or channel 
select Description, sum(Deposits) TotalDeposite from banktransaction group by Description;
# total deposits media or channel as  main group sub group dateinfo 
select Description,Dateinfo, sum(Deposits) TotalDeposite from banktransaction 
group by Description,DateInfo order by Description;
# total deposits first group date then channel  
select Dateinfo,Description, sum(Deposits) TotalDeposite from banktransaction 
group by DateInfo,Description order by DateInfo desc;

# total deposits first group date then channel  apart from ATM transaction 
select Dateinfo,Description, sum(Deposits) TotalDeposite from banktransaction 
where Description != 'ATM' group by DateInfo,Description order by DateInfo desc;


# college dataset 
select * from college where institutionName='BMS';
select * from college where institutionName ="";
select count(*) from college;
select count(*) from college where InstitutionName ="";
select institutionName,count(*) from college where InstitutionName !="" 
group by institutionName having count(*)>=2;



