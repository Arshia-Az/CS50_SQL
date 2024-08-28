SELECT players.first_name, players.last_name, salaries.salary FROM salaries
JOIN players ON players.id = salaries.player_id
WHERE year = 2001
ORDER BY salary , first_name, last_name, player_id
LIMIT 50;
