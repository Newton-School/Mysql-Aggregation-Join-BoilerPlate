-- Query the flight having id 3 
-- origin and destination should be matched with the locations table name
SELECT id, origin, destination, duration FROM 
(SELECT flights.id as id2, locations.name as origin, flights.duration as duration FROM flights JOIN locations ON locations.id = flights.destination) as table2 
INNER JOIN 
(SELECT flights.id as id, locations.name as destination FROM flights JOIN locations ON locations.id = flights.origin) as table1 
ON 
table1.id = table2.id2 WHERE id = 3