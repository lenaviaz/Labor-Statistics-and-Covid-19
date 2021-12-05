SELECT topcitiesforinstacart.City, topcitiesforinstacart.Rank, 
toppayingcitiesasofjuly2021.avg_salary
FROM topcitiesforinstacart
INNER JOIN toppayingcitiesasofjuly2021 ON 
topcitiesforinstacart.City = 
toppayingcitiesasofjuly2021.City
ORDER BY topcitiesforinstacart.rank;




