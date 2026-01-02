-- Product-wise revenue and profit
SELECT
    p.product_name,
    SUM(s.quantity) AS units_sold,
    SUM(s.quantity * s.selling_price) AS total_revenue,
    SUM(s.quantity * (s.selling_price - p.cost_price)) AS total_profit
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY p.product_name;
