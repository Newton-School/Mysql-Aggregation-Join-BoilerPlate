-- Query all the flights where origin should be matched with locations table and origin name contians character 'a' from flights table
SELECT * FROM flights
WHERE origin IN (SELECT id FROM locations WHERE name LIKE '%a%');