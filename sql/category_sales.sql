-- Which product categories are losing money?

SELECT 
	Category, 
    ROUND(SUM(Sales), 2) AS Category_Sales, 
    ROUND(SUM(Profit), 2) AS Category_Profit, 
    ROUND(SUM(Profit)/SUM(Sales) * 100, 2) AS Category_Profit_Margin
FROM sample___superstore
GROUP BY Category
HAVING Category_Profit_Margin < 0
ORDER BY Category_Profit ASC