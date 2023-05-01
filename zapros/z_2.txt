SELECT 
Product_line AS product,
count(*) AS count_product
FROM sales
GROUP BY product
ORDER BY count_product DESC
LIMIT 10;