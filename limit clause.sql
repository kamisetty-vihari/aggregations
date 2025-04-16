SELECT 
  extract(Year from order_date) AS year,
  extract(month from order_date) AS month,
  SUM(amount) AS total_revenue
FROM online_sales_sample
GROUP BY extract(year FROM order_date), extract(month FROM order_date)
ORDER BY year, month
limit 10;