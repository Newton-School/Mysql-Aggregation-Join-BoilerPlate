-- Query all the flights_id from passengers table having passengers more than 1 
SELECT flight_id FROM passengers
GROUP BY flight_id HAVING COUNT(*) > 1;