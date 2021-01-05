-- Query all the flights going to 'London' or duration is more than 500 form flights table
SELECT * FROM flights
WHERE origin = (SELECT id FROM locations WHERE name = 'London') OR duration > 500;