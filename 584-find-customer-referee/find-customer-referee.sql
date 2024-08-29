-- Write your PostgreSQL query statement below
-- SELECT name
-- FROM Customer
-- WHERE referee_id is null or referee_id != 2;

-- Solution 2
SELECT name
FROM Customer
WHERE referee_id IS DiSTINCT FROM 2