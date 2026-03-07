-- What Region is the most profitable?

SELECT 
	Region, 
	ROUND(SUM(Sales), 2) AS Regional_Sales, 
	ROUND(SUM(Profit), 2) AS Regional_Profit, 
	ROUND(SUM(Profit)/SUM(Sales) * 100, 2) AS Regional_Profit_Margin
FROM sample___superstore
GROUP BY Region
ORDER BY Regional_Profit_Margin DESC;