SELECT username
FROM (
    SELECT username
    FROM users
    ORDER BY COUNT() DESC, username ASC
    LIMIT 1
) AS most_popular_user
