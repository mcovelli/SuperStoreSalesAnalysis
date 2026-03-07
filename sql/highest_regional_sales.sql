-- What Region are has the highest sales?

SELECT 
	Region, 
	ROUND(SUM(Sales), 2) AS Regional_Sales
FROM sample___superstore
GROUP BY Region
ORDER BY Regional_Sales DESC;