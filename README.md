# Task 6: Sales Trend Analysis Using Aggregations

The goal is to analyze monthly revenue and order volume using SQL aggregation techniques.

# Key columns used:
- `ORDERDATE` – Date of order (string format)
- `SALES` – Revenue per transaction
- `ORDERNUMBER` – Treated as unique order ID

# Task Objectives

- Analyze monthly **total revenue**
- Analyze **total number of orders** per month
- Identify **top 3 months** by revenue

##  SQL Queries

###  Monthly Revenue and Order Volume

```sql
SELECT 
    YEAR(STR_TO_DATE(ORDERDATE, '%m/%d/%Y %H:%i')) AS year,
    MONTH(STR_TO_DATE(ORDERDATE, '%m/%d/%Y %H:%i')) AS month,
    SUM(SALES) AS total_revenue,
    COUNT(DISTINCT ORDERNUMBER) AS total_orders
FROM 
    sales_data_sample
GROUP BY 
    year, month
ORDER BY 
    year, month;
