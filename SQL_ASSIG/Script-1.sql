SELECT 
    origin, 
    AVG(dep_delay) AS mean_temperature
FROM 
    flights
GROUP BY 
    origin;