-- Query 1: Sales by Category
SELECT Category, ROUND(SUM(Sales), 2) AS Total_Sales
FROM superstore
GROUP BY Category
ORDER BY Total_Sales DESC;

-- Query 2: Top 10 Customers by Sales
SELECT Customer_Name, ROUND(SUM(Sales), 2) AS Total_Sales
FROM superstore
GROUP BY Customer_Name
ORDER BY Total_Sales DESC
LIMIT 10;

-- Query 3: Sales by Region and Category
SELECT Region, Category, ROUND(SUM(Sales), 2) AS Total_Sales
FROM superstore
GROUP BY Region, Category
ORDER BY Region, Total_Sales DESC;

-- Query 4: High Value Customers (Subquery)
SELECT Customer_Name, Region, ROUND(SUM(Sales), 2) AS Total_Sales
FROM superstore
GROUP BY Customer_Name, Region
HAVING Total_Sales > (SELECT AVG(Sales) * 10 FROM superstore)
ORDER BY Total_Sales DESC;