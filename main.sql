-- 1-mashq
SELECT name
FROM employees
WHERE id IN (
    SELECT manager_id 
    FROM employees 
    WHERE manager_id IS NOT NULL
    GROUP BY manager_id 
    HAVING COUNT(*) >= 5
);
-- 2-mashq
SELECT 
    customer_id,
    MIN(order_date) AS first_order,
    MAX(order_date) AS last_order,
    COUNT(*) AS total_orders
FROM orders
GROUP BY customer_id;
