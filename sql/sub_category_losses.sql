-- Which product Sub-categories are losing money?

SELECT 
	`Sub-Category`, 
    ROUND(SUM(Sales), 2) AS Sub_Category_Sales, 
    ROUND(SUM(Profit), 2) AS Sub_Category_Profit, 
    ROUND(SUM(Profit)/SUM(Sales) * 100, 2) AS Sub_Category_Profit_Margin
FROM sample___superstore
GROUP BY `Sub-Category`
HAVING Sub_Category_Profit_Margin < 0
ORDER BY Sub_Category_Profit_Margin ASC;