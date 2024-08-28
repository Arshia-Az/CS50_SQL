SELECT city, COUNT(type) as "Public" FROM schools
WHERE type LIKE "Public School"
GROUP BY city
HAVING Public <= 3
ORDER BY Public DESC, city
;
