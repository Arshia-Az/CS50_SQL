SELECT city, COUNT(type) as "count" FROM schools
WHERE type LIKE "Public School"
GROUP BY city
ORDER BY count DESC , city
LIMIT 10;
