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


