SELECT * FROM salesdb.sales_data;

select count(*) from sales_data;

select * from sales_data limit 10;

-- 1) Total Sales and Profit/Cost by Product Category

select Product, sum(Sales) as total_sales, sum(Cost) as total_Cost, sum(Sales - Cost) as total_Profit
from sales_data
group by Product
order by total_sales desc;

-- 2) Revenue by Regions

select Region, sum(Sales) as regional_sales, count(Order_ID) as total_orders
from sales_data
group by Region
order by regional_sales desc;

-- 3) Spending by customers

select Customer, sum(Sales) as total_Spend
from sales_data
group by Customer
order by total_spend desc;
