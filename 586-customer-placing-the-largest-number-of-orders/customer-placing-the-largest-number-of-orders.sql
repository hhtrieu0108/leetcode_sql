-- Write your PostgreSQL query statement below
-- SELECT customer_number 
-- FROM
-- (
--     SELECT customer_number, COUNT(order_number)
--     FROM Orders
--     GROUP BY customer_number
--     ORDER BY COUNT(order_number) DESC
--     LIMIT 1
-- )

SELECT customer_number
FROM
    (SELECT customer_number, COUNT(order_number) AS customer_orders
    FROM
        Orders
    GROUP BY customer_number) t1
ORDER BY customer_orders DESC
LIMIT 1