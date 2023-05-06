WITH in_total AS (
SELECT ID,Product_line, (Quantity*Unit_price)
AS spent
FROM sales)
SELECT ID,Product_line, spent
FROM in_total
LIMIT 10;