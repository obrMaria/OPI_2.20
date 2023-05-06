WITH geo_las AS (select geo_lat AS geo_las FROM city WHERE city = 'Самара'),
geo_los AS (select geo_lon AS geo_los FROM city WHERE city = 'Самара'),
geo_lam AS (SELECT geo_lat AS geo_lam, city FROM city),
geo_lou as (SELECT geo_lon AS geo_lou FROM city)
SELECT sqrt((POWER((geo_las - geo_lam),2) + POWER((geo_los - geo_lou),2)))
AS distance, city 
FROM (geo_las ,geo_los ,geo_lam, geo_lou )
WHERE city != 'Самара'
ORDER BY distance ASC
LIMIT 3;