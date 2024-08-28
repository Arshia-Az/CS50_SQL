SELECT first_name, last_name FROM (
SELECT first_name, last_name, id FROM (
    SELECT first_name, last_name, players.id AS id FROM players
JOIN performances ON performances.player_id = players.id
JOIN salaries ON salaries.player_id = players.id AND performances.year = salaries.year
WHERE performances.year = 2001 AND salary / H IS NOT NULL
ORDER BY salary / H
LIMIT 10)

INTERSECT

SELECT first_name, last_name, id FROM (
    SELECT first_name, last_name, players.id AS id FROM players
JOIN performances ON performances.player_id = players.id
JOIN salaries ON salaries.player_id = players.id AND performances.year = salaries.year
WHERE performances.year = 2001 AND salary / RBI IS NOT NULL
ORDER BY salary / RBI
LIMIT 10))
ORDER BY "id";


