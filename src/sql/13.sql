-- Query all the flights with origin, destnation, duration and sort them in decreasing order by duration where origin and destination should be the names form locations table
SELECT origin, destination, duration FROM 
(SELECT flights.id as id2, locations.name as origin, flights.duration as duration FROM flights JOIN locations ON locations.id = flights.destination) as table2 
INNER JOIN 
(SELECT flights.id as id1, locations.name as destination FROM flights JOIN locations ON locations.id = flights.origin) as table1 
ON 
table1.id1 = table2.id2 ORDER BY duration DESC;