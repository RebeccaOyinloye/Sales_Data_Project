CREATE DATABASE LITA_PROJECT

select * from [dbo].[Capstone_Project_Data]

--RETRIEVE THE TOTAL SALES FOR EACH PRODUCT CATEGORY--

select product, sum(Total_Revenue_Total_Sales) as TotalSales 
from [dbo].[Capstone_Project_Data]
group by product

--FIND THE NUMBER OF SALES TRANSACTION IN EACH REGION--

select region, count(orderid) as No_of_Sales_Transaction
from [dbo].[Capstone_Project_Data]
GROUP BY  region  

--FIND THE HIGHEST-SELLING PRODUCT BY TOTAL SALES VALUE--

select TOP 1 product, sum(Total_Revenue_Total_Sales) as highest_selling_PRODUCT
from [dbo].[Capstone_Project_Data]
group by product 

--CALCULATE TOTAL REVENUE PER PRODUCT--

 SELECT PRODUCT, SUM(Total_Revenue_Total_Sales) AS Total_Revenue 
 from [dbo].[Capstone_Project_Data]
 group by product 

 --CALCULATE MONTHLY SALES TOTALS FOR THE CURRENT YEAR--

SELECT ORDERDATE, SUM(Total_Revenue_Total_Sales) AS MONTHLY_SALES
FROM [dbo].[Capstone_Project_Data]  WHERE ORDERDATE BETWEEN '2024-01-01' AND '2024-12-31'
GROUP BY ORDERDATE 

 --OR--

select DATENAME(MONTH, orderDate) as Month,
 sum(Total_Revenue_Total_Sales) as Total_Monthly_Sales
 FROM [dbo].[Capstone_Project_Data] WHERE YEAR(ORDERDATE) = '2024'
 GROUP BY DATENAME(MONTH, orderDate)

 --FIND TOP 5 CUSTOMERS BY TOTAL PURCHASE AMOUNT--

 SELECT TOP 5 CUSTOMER_ID, SUM(Total_Revenue_Total_Sales) AS TOP5_CUSTOMERS
 FROM [dbo].[Capstone_Project_Data]
 GROUP BY CUSTOMER_ID 
ORDER BY TOP5_CUSTOMERS DESC

--CALCULATE THE PERCENTAGE OF TOTAL SALES CONTRIBUTED BY EACH REGION--

WITH REGION AS(
SELECT REGION, SUM(Total_Revenue_Total_Sales) AS TOTAL_SALES 
FROM [dbo].[Capstone_Project_Data]
GROUP BY REGION)
SELECT REGION,(TOTAL_SALES * 100.0 / (SELECT SUM(Total_Revenue_Total_Sales)
FROM [dbo].[Capstone_Project_Data])) AS SALES_PERCENTAGE
FROM REGION

--IDENTIFY PRODUCTS WITH NO SALES IN THE LAST QUARTER--

SELECT PRODUCT FROM [dbo].[Capstone_Project_Data] 
WHERE PRODUCT NOT IN (SELECT PRODUCT FROM [dbo].[Capstone_Project_Data]
WHERE ORDERDATE >= DATEADD(Q, -1, GETDATE()))
GROUP BY PRODUCT



