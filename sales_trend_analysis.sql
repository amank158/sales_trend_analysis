
-- ==========================================
-- Sales Trend Analysis: Monthly Aggregation
-- Dataset: sales_data_sample
-- ==========================================

-- ✅ Monthly Revenue and Order Volume
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

-- ✅ Top 3 Months by Revenue
SELECT 
    YEAR(STR_TO_DATE(ORDERDATE, '%m/%d/%Y %H:%i')) AS year,
    MONTH(STR_TO_DATE(ORDERDATE, '%m/%d/%Y %H:%i')) AS month,
    SUM(SALES) AS total_revenue
FROM 
    sales_data_sample
GROUP BY 
    year, month
ORDER BY 
    total_revenue DESC
LIMIT 3;
