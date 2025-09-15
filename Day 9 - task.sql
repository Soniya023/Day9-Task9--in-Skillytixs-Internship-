CREATE TABLE online_sales (
    transactions_id INT,
    sale_date DATE,
    sale_time TEXT,
    customer_id INT,
    gender TEXT,
    age INT,
    category TEXT,
    quantiy INT,
    price_per_unit DECIMAL(10,2),
    cogs DECIMAL(10,2),
    total_sale DECIMAL(10,2)
);

SELECT * FROM online_sales LIMIT 10;

--Group by YEAR + MONTH
SELECT
  EXTRACT(YEAR FROM sale_date)::INT AS year,
  EXTRACT(MONTH FROM sale_date)::INT AS month,
  SUM(total_sale) AS total_revenue,
  COUNT(DISTINCT transactions_id) AS total_orders
FROM online_sales
WHERE EXTRACT(YEAR FROM sale_date) = 2023
GROUP BY year, month
ORDER BY year, month;

--Group by formatted month
SELECT
  TO_CHAR(sale_date, 'YYYY-MM') AS month_year,
  SUM(total_sale) AS total_revenue,
  COUNT(DISTINCT transactions_id) AS total_orders
FROM online_sales
WHERE EXTRACT(YEAR FROM sale_date) = 2023
GROUP BY month_year
ORDER BY month_year;

--Top N months by revenue
SELECT
  TO_CHAR(sale_date, 'YYYY-MM') AS month_year,
  SUM(total_sale) AS total_revenue
FROM online_sales
WHERE EXTRACT(YEAR FROM sale_date) = 2023
GROUP BY month_year
ORDER BY total_revenue DESC
LIMIT 3;

-- to inspect high revenue months across all years
SELECT TO_CHAR(sale_date,'YYYY-MM') AS month_year, SUM(total_sale) AS total_revenue
FROM online_sales
GROUP BY month_year
ORDER BY total_revenue DESC
LIMIT 10;

--Format as Month-Year
SELECT
    TO_CHAR(sale_date, 'FMMonth-YYYY') AS month_year_readable,
    SUM(total_sale) AS total_revenue,
    COUNT(DISTINCT transactions_id) AS total_orders
FROM online_sales
WHERE EXTRACT(YEAR FROM sale_date) = 2023
GROUP BY TO_CHAR(sale_date, 'FMMonth-YYYY'), EXTRACT(MONTH FROM sale_date), EXTRACT(YEAR FROM sale_date)
ORDER BY EXTRACT(YEAR FROM sale_date), EXTRACT(MONTH FROM sale_date);

--chronological order
SELECT
  EXTRACT(YEAR FROM sale_date)::INT AS year,
  EXTRACT(MONTH FROM sale_date)::INT AS month,
  SUM(total_sale) AS total_revenue,
  COUNT(DISTINCT transactions_id) AS total_orders
FROM online_sales
GROUP BY year, month
ORDER BY year, month;


