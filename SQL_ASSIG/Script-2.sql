SELECT 
    origin, 
    COUNT(*) / 31 AS avg_flights_per_day
FROM 
    flights
WHERE 
    month = 1
GROUP BY 
    origin;