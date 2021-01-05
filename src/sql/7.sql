-- Query all the flights going to 'Paris' having duration is more than 500 from flights table
SELECT * FROM flights
WHERE destination IN (SELECT id FROM locations WHERE name = 'Paris') AND duration > 500