-- show the list of passengers along with flights description in increasing order of duration
-- Join all the tables (flights, location, and passengers);
SELECT name, origin, destination, duration FROM passengers 
INNER JOIN
	(SELECT id1, origin, destination, duration 
 	FROM 
	(SELECT flights.id as id2, locations.name as origin, flights.duration as duration FROM flights JOIN locations ON locations.id = flights.destination) as table2 
	INNER JOIN 
	(SELECT flights.id as id1, locations.name as destination FROM flights JOIN locations ON locations.id = flights.origin) as table1 
	ON 
	table1.id1 = table2.id2) as table3 
ON table3.id1 = passengers.flight_id

-- -- Output data
-- name    origin  destination duration
-- Alace   London  New York    414
-- Bob     Paris   Lima        500