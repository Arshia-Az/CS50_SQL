
SELECT name FROM schools WHERE district_id = (
    SELECT id FROM districts
     WHERE city = "Cambridge"
     AND
    type = "Public School District"
);


