# Sales Perfomance Analysis 


## Table of Content 


[Project Overview](#project-overview)

[Data Source](#data-source)

[Tools Used](#tools-used)

[Data Cleaning and Preparation](#data-cleaning-and-preparation)

[Exploratory Data Analysis](#exploratory-data-analysis)

[Data Analysis](#data-analysis)

[Visualizations](#visualizations)

[Result and Findings](#result-and-findings)

[Recommendations](#recommendations)

[Limitations](#limitations)

### Project Overview
---
This Data Analysis project analyzes the sales data of a retail store to provide insights into the Sales performance over the past year. Utilizing Excel, SQL, and Power BI, the analysis will identify top-selling products, regional trends and monthly Sales pattern. By analyzing various aspect of the sales data, this project aims to uncover trends, make data-driven recommedations, and gain a deeper understanding of the company's performance, ultimately designning an interactive Power BI dashboard for stakeholder decision making.  

### Data Source 
---
The primary dataset used for this analysis 'Sales Data' was obtained from the 'LITA CAPSTONE DATASET' provided by The Incubator Hub. This dataset contains information about sales transactions made by the retail store. 

### Tools Used
---
- Excel
  1. For Data Cleaning
  2. For Data Analysis 

- Structured Query Language (SQL) - For Querying of Data

- Power Bi - For Creating Reports  
 
- Github - For Portfolio Building

### Data Cleaning and Preparation

In the initial Preparation phase i performed the following tasks: 
1. Data loading and inspection
2. Data Cleaning and Formatting 
3. Removing Duplicates

### Exploratory Data Analysis
---
Explored Sales Data to answer key questions and extract key insights to answer quwstions asked including: 

 - What is the overall sales trend?
 - What is the totalsales by product?
 - What is the average sale per product?
 - Retrieve total sales for each product category?
 - Find the number of sales transaction in each category?
 - Find the highest selling product by total sales value?
 - Calculate total revenue per product?
 - Find top 5 customers by total purchase amount?
 - Calculate the percentage of total sales contributed by each region?
 - identify product with no sale in the last quarter?

### Data Analysis
---
This include some of the code and features i worked with, such as: 
1. Excel
- pivot table
```Excel
=quantity * unit price
```
- Utilized pivot tables to summarize sales data, analyzing sales by producf, region and month
  
- Employed Averageif formular to calculate such as average sales per product and total revenue by region.
```Excel
=Averageif(product, shoes, TotalSales/TotalRevenue
```

2. SQL 
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
3. Power BI
- Conditional columns
- Measures
```DAX
Average Sales/Reveue = AVERAGE('SalesData working sheet' [Total Revnue / Total Sales])
```
```DAX
Average Quantity = AVERAGE('SalesData working sheet' [Quantity])
```

### Visualizations

- Pivot Table Summarizations

![salespivot_table](https://github.com/user-attachments/assets/4178b356-1af5-46b4-b1fb-b19766d76dbe)

![sales_data_pivottable](https://github.com/user-attachments/assets/f67d3f59-3e66-48b7-a03f-038cfec69178)

![pivottable_salesdata](https://github.com/user-attachments/assets/cdf2a593-fb48-484e-9166-4507a684bf0f)

- Metrics with Excel formula and Growth rate

![Sales metric](https://github.com/user-attachments/assets/6593d462-42f4-4165-94c3-5749d8807210)

  
- Structured Query Language(SQL) Summarizations

![query_s1](https://github.com/user-attachments/assets/67b8942b-bad1-421d-a5ee-ee7260d342a2)

![query_s2](https://github.com/user-attachments/assets/3c5bb6cb-8c8b-4fb5-b504-af6cca813ed9)

![query_s3](https://github.com/user-attachments/assets/f772ee32-2a36-460b-ab38-6c483a2214ec)

![query_s4](https://github.com/user-attachments/assets/e6a19873-c89d-47a1-864a-e484bc4767e9)

- Sales Dashboard

![Salesdashboard](https://github.com/user-attachments/assets/b7f27c1d-e58d-4363-b4f5-42e173986285)

- Sales Trends and Overview

![Sales_overview](https://github.com/user-attachments/assets/5b89b0fc-96a8-47e9-8972-b11ffb81e720)

- Sales Data Tables

![Sales_data_tables](https://github.com/user-attachments/assets/b27e0303-cbd7-4678-8dfa-259afb239988)



### Result and Findings
---
The result of the analysis are summarized as follows: 

The Retail Store sales fluctuate throughout the year, peaking consistently in February. In sales and revenue Shoes and the South region are the best performing. Shirts has the highest average sales while South region alsp boasts the highest average sales. Notably, 2023 sales exceeded 2024 sales by 9.9%, although 2024 is yet to conclude.

### Recommendations 
---
Based on the sales analysis and to capitalize on the insight and findings, I recommend the following strategic actions: 

1. Invest in targeted marketing and promotions to leverage the February sales peak, Maximizing revenue potential.
2. prioritize promotions for Shoes and Shirts, ensuring these top-selling products receive adequate attention.
3. Concentrate marketing efforts on the high-performing South region to further boost sales. 
4. Explore targeted campaigns and opportunities to grow sales in the underperforming west region.
5. Implement a customer segmentation strategy to effectively target high lifetime value customers.

### Limitations
---
Notable limitations were minimized due to the dataset's cleanliness as  no null or blank columns were present, ensuring data integrity However, removing duplicates from the dataset initially may have potentially impacted the accuracy of the analysis.
