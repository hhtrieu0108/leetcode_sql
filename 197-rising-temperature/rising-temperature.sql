-- Write your PostgreSQL query statement below
SELECT 
    id
FROM (
    SELECT
        id,
        recordDate,
        temperature,
        LAG(temperature) OVER(ORDER BY recordDate) as previous_temperature,
        LAG(recordDate) OVER(ORDER BY recordDate) as previous_date
    FROM
        Weather
    )
WHERE 
    (recordDate - previous_date = 1) AND
    (temperature - previous_temperature) > 0