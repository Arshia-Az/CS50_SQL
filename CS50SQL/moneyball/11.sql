SELECT first_name, last_name, salary / H  AS "dollars per hit" FROM players
JOIN performances ON performances.player_id = players.id
JOIN salaries ON salaries.player_id = players.id AND performances.year = salaries.year
WHERE performances.year = 2001 AND "dollars per hit" IS NOT NULL
ORDER BY "dollars per hit" ,first_name ,last_name
LIMIT 10
;

