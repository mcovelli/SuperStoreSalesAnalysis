-- Which product categories are most profitable?

SELECT 
	Category, 
    ROUND(SUM(Sales), 2) AS Category_Sales, 
    ROUND(SUM(Profit), 2) AS Category_Profit, 
    ROUND(SUM(Profit)/SUM(Sales) * 100, 2) AS Category_Profit_Margin
FROM sample___superstore
GROUP BY Category
ORDER BY Category_Profit DESC