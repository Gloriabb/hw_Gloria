WITH RankedDestinations AS (
    SELECT 
        origin, 
        dest, 
        COUNT(*) AS flight_count,
        ROW_NUMBER() OVER (PARTITION BY origin ORDER BY COUNT(*) DESC) AS rank
    FROM 
        flights
    GROUP BY 
        origin, dest
)
SELECT 
    origin, 
    dest, 
    flight_count AS n
FROM 
    RankedDestinations
WHERE 
    rank = 1
ORDER BY 
    origin;