-- find the average duration of fligts from flight table having field 'avg_duration' only round to largest integer less than or equal to avg duration
SELECT FLOOR(AVG(duration)) as avg_duration FROM flights;
