-- Query all the flights from flights table in which passengers are more than one.
SELECT * FROM flights WHERE id IN
(SELECT flight_id FROM passengers
GROUP BY flight_id HAVING COUNT(*) > 1);
