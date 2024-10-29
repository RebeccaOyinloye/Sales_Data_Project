# Sales Perfomance Analysis 

### Project Overview

This Data Analysis project analyzes the sales data of a retail store to provide insights into the Sales performance over the past year. Utilizing Excel, SQL, and Power BI, the analysis will identify top-selling products, regional trends and monthly Sales pattern. By analyzing various aspect of the sales data, this project aims to uncover trends, make data-driven recommedations, and gain a deeper understanding of the company's performance, ultimately designning an interactive Power BI dashboard for stakeholder decision making.  

### Data Source 

Sales Data: The primary dataset used for this analysis is the 'LITA CAPSTONE DATASET' provided by The Incubator Hub. This dataset contains information about sales transactions made by the retail store. 

### Tools

- Excel
  1. For Data Cleaning
  2. For Data Analysis 

- Structured Query Language (SQL) - For Querying of Data

- Power Bi - For Creating Reports  
 
- Github - For Portfolio Building

### Data Cleaning/Preparation

In the initial Preparation phase i performed the following tasks: 
1. Data loading and inspection
2. Data Cleaning and Formatting 
3. Removing Duplicates

### Exploratory Data Analysis

Explored Sales Data to answer key questions including: 

 - which product is the best-selling? 
 - what is the overall sales trend?
 - Which region has the highest sales?
 - what is the total revenue?
 - Who are the Top 5 customer by total sales?
 - Which region have the most loyal customers?
   
### Data Analysis

- Created a new column TotalSales/Total revenue
```Excel
=quantity * unit price
```
- Utilized pivot tables to summarize sales data, analyzing sales by producf, region and month
  
- Employed Averageif formular to calculate such as average sales per product and total revenue by region.
```Excel
=Averageif(product, shoes, TotalSales/TotalRevenue
```

Data Analysis Query including: 
- Retrieve total sales for each product category 
```SQL
Select Product, Sum(Total_Sales_Total_Revenue) As TotalSales From lita_capstone_project
Group by Product
```
- Highest selling product by total sales
```SQL
Select Top 1 product, sum(Total_Sales_Total_Revenue) as HighestSelling from Total_Sales_Total_Revenue
Group by product
```


