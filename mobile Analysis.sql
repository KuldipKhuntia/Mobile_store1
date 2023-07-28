use mobile
select * from mobile_analysis
-- check mobile feature and price list --
select Phone_name,Price from mobile_analysis
-- find out the price of 5 most expensive phones --
select * from mobile_analysis order by Price desc limit 5
 -- find out the price of 5 most  cheapest phones--
select * from mobile_analysis order by Price asc limit 5
-- list of top 5 SAMSUNG phones with price and all features --
select * from mobile_analysis 
where Brands='samsung' 
order by Price desc limit 5
-- Must have android phone list then top 5 high price android phones --
select * from mobile_analysis where Operating_System_Type='Android' order by Price desc limit 5
-- Must have android phone list then top 5 lower price android phones --
select * from mobile_analysis where Operating_System_Type='Android' order by Price asc limit 5
-- Must have IOS phone list then top 5 high price IOS phone --
select * from mobile_analysis where Operating_System_Type='IOS' order by price desc limit 5 
-- Must have IOS phone list then top 5 lower price IOS phone --
select * from mobile_analysis where Operating_System_Type='IOS' order by price asc limit 5 
-- write a querry which phone support 5g and also top 5 phone with 5g support --
select * from mobile_analysis where 5g_availability="Yes" order by price desc limit 5
-- Total price of all mobile to be found with brand name --
select brands, sum(price) from mobile_analysis group by brands


 