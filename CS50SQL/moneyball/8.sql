SELECT salary FROM performances
JOIN salaries ON salaries.player_id = performances.player_id
WHERE salaries.year = 2001
ORDER BY HR DESC , salaries.salary DESC
LIMIT 1;
