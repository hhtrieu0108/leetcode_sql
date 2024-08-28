-- Write your PostgreSQL query statement below
-- Solution 1
SELECT 
    c.name as "Customers"
FROM 
    Customers c LEFT JOIN Orders o on c.id = o.customerId
WHERE 
    o.customerId IS NULL;

-- SOLUTION 2
-- SELECT 
--     name AS Customers
-- FROM 
--     Customers c
-- WHERE NOT EXISTS (
--     SELECT 1
--     FROM 
--         Orders o
--     WHERE 
--         o.customerId = c.id
-- );
