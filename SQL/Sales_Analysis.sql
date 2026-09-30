drop database sales_analytics;
CREATE DATABASE sales_analytics;
use sales_analytics;
CREATE TABLE sales (
    `Order ID` VARCHAR(50),
    Amount DECIMAL(10,2),
    Profit DECIMAL(10,2),
    Quantity INT,
    Category VARCHAR(50),
    `Sub-Category` VARCHAR(50),
    PaymentMode VARCHAR(50),
    `Order Date` DATE,
    CustomerName VARCHAR(100),
    State VARCHAR(50),
    City VARCHAR(50),
    `Year-Month` VARCHAR(7)
);
DESCRIBE sales;
SELECT COUNT(*) AS total_rows
FROM sales;
SELECT
    SUM(`Order ID` IS NULL) AS order_id_nulls,
    SUM(Amount IS NULL) AS amount_nulls,
    SUM(Profit IS NULL) AS profit_nulls,
    SUM(Quantity IS NULL) AS quantity_nulls,
    SUM(Category IS NULL) AS category_nulls,
    SUM(`Sub-Category` IS NULL) AS subcategory_nulls,
    SUM(PaymentMode IS NULL) AS paymentmode_nulls,
    SUM(`Order Date` IS NULL) AS order_date_nulls,
    SUM(CustomerName IS NULL) AS customer_nulls,
    SUM(State IS NULL) AS state_nulls,
    SUM(City IS NULL) AS city_nulls
FROM sales;
SELECT COUNT(*) - COUNT(DISTINCT `Order ID`) AS duplicate_order_ids
FROM sales;
SELECT
    COUNT(*) AS total_rows,
    COUNT(DISTINCT CONCAT_WS('|',
        `Order ID`, Amount, Profit, Quantity,
        Category, `Sub-Category`, PaymentMode,
        `Order Date`, CustomerName, State, City, `Year-Month`
    )) AS unique_rows
FROM sales;
SELECT
    SUM(Amount <= 0) AS invalid_amount,
    SUM(Profit <= 0) AS invalid_profit,
    SUM(Quantity <= 0) AS invalid_quantity
FROM sales;
SELECT
    `Order ID`,
    Amount,
    Quantity,
    ROUND(Amount / Quantity, 2) AS unit_price
FROM sales
LIMIT 10;
ALTER TABLE sales
ADD COLUMN unit_price DECIMAL(10,2);
SET SQL_SAFE_UPDATES = 0;

UPDATE sales
SET unit_price = ROUND(Amount / Quantity, 2);

SET SQL_SAFE_UPDATES = 1;
SELECT Amount, Quantity, unit_price
FROM sales
LIMIT 10;
SELECT COUNT(*) AS missing_unit_price
FROM sales
WHERE unit_price IS NULL;
SELECT
    SUM(Amount) AS total_sales,
    SUM(Profit) AS total_profit,
    SUM(Quantity) AS total_quantity
FROM sales;
SELECT
    Category,
    SUM(Amount) AS total_sales
FROM sales
GROUP BY Category
ORDER BY total_sales DESC;
SELECT
    `Sub-Category`,
    SUM(Amount) AS total_sales
FROM sales
GROUP BY `Sub-Category`
ORDER BY total_sales DESC;
SELECT
    `Year-Month`,
    SUM(Amount) AS monthly_sales
FROM sales
GROUP BY `Year-Month`
ORDER BY `Year-Month`;
SELECT
    CustomerName,
    SUM(Amount) AS total_sales
FROM sales
GROUP BY CustomerName
ORDER BY total_sales DESC
LIMIT 10;
SELECT
    State,
    SUM(Amount) AS total_sales
FROM sales
GROUP BY State
ORDER BY total_sales DESC;
SELECT
    PaymentMode,
    SUM(Amount) AS total_sales,
    COUNT(*) AS transactions
FROM sales
GROUP BY PaymentMode
ORDER BY total_sales DESC;
SELECT
    Category,
    SUM(Amount) AS total_sales,
    SUM(Profit) AS total_profit
FROM sales
GROUP BY Category
ORDER BY total_profit DESC;