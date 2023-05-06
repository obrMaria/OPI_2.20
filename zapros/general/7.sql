.mode box
SELECT timezone, count(city)
FROM city
GROUP BY timezone
ORDER BY count(city) DESC;