-- Query all the flights going from 'JFK' and 'LIM' from flights table
SELECT * FROM flights
WHERE origin IN (SELECT id FROM locations WHERE code IN ('LIM', 'JFK'));