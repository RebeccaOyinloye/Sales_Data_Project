# Sales Perfomance Analysis 

[Project Overview](#project-overview)

[Data Source](#data-source)

[Tools Used](#tools-used)

[Data Cleaning and Preparation](#data-cleaning-and-preparation)

[Exploratory Data Analysis](#exploratory-data-analysis)

[Data Analysis](#data-analysis)

[Result and Findings](#result-and-findings)

[Recommendations](#recommendations)

[Limitations](#limitations)

### Project Overview

This Data Analysis project analyzes the sales data of a retail store to provide insights into the Sales performance over the past year. Utilizing Excel, SQL, and Power BI, the analysis will identify top-selling products, regional trends and monthly Sales pattern. By analyzing various aspect of the sales data, this project aims to uncover trends, make data-driven recommedations, and gain a deeper understanding of the company's performance, ultimately designning an interactive Power BI dashboard for stakeholder decision making.  

### Data Source 

Sales Data: The primary dataset used for this analysis is the 'LITA CAPSTONE DATASET' provided by The Incubator Hub. This dataset contains information about sales transactions made by the retail store. 

### Tools Used

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

Explored Sales Data to answer key questions including: 

 - which product is the best-selling? 
 - what is the overall sales trend?
 - Which region has the highest sales?
 - what is the total revenue?
 - Who are the Top 5 customer by total sales?
 - Which region have the most loyal customers?
   
### Data Analysis

Some code/features i worked with, such as: 

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

### Result and Findings

The result of the analysis are summarized as follows: 

The Retail Store sales fluctuate throughout the year, peaking consistently in February. In sales and revenue Shoes and the South region are the best performing. Shirts has the highest average sales while South region alsp boasts the highest average sales. Notably, 2023 sales exceeded 2024 sales by 9.9%, although 2024 is yet to conclude.

### Recommendations 

Based on the sales analysis and to capitalize on the insight and findings, I recommend the following strategic actions: 

1. Invest in targeted marketing and promotions to leverage the February sales peak, Maximizing revenue potential.
2. prioritize promotions for Shoes and Shirts, ensuring these top-selling products receive adequate attention.
3. Concentrate marketing efforts on the high-performing South region to further boost sales. 
4. Explore targeted campaigns and opportunities to grow sales in the underperforming west region.
5. Implement a customer segmentation strategy to effectively target high lifetime value customers.

### Limitations

Notable limitations were minimized due to the dataset's cleanliness as  no null or blank columns were present, ensuring data integrity However, removing duplicates from the dataset initially may have potentially impacted the accuracy of the analysis.
