USE retail_project;

-- View complete dataset
SELECT * FROM orders;

-- Total Sales
SELECT SUM(Sales) AS total_sales
FROM orders;

-- Total Profit
SELECT SUM(Profit) AS total_profit
FROM orders;

-- Total Orders
SELECT COUNT(`Order ID`) AS total_orders
FROM orders;

-- Sales by Region
SELECT Region,
SUM(Sales) AS total_sales
FROM orders
GROUP BY Region;

-- Profit by Region
SELECT Region,
SUM(Profit) AS total_profit
FROM orders
GROUP BY Region;

-- Sales by Category
SELECT Category,
SUM(Sales) AS total_sales
FROM orders
GROUP BY Category;

-- Profit by Category
SELECT Category,
SUM(Profit) AS total_profit
FROM orders
GROUP BY Category;

-- Top 10 Customers
SELECT `Customer Name`,
SUM(Sales) AS total_sales
FROM orders
GROUP BY `Customer Name`
ORDER BY total_sales DESC
LIMIT 10;

-- Loss Making Products
SELECT `Product Name`,
SUM(Profit) AS total_profit
FROM orders
GROUP BY `Product Name`
HAVING total_profit < 0;

-- Discount Impact on Profit
SELECT Discount,
AVG(Profit) AS avg_profit
FROM orders
GROUP BY Discount
ORDER BY Discount;