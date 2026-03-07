-- Discount vs Profit

SELECT 
CASE
	WHEN Discount = 0 THEN 'No Discount'
    WHEN Discount <= .2 THEN 'Low'
    WHEN Discount <= .4 THEN 'Medium'
    ELSE 'High'
    END AS Discount_Range,
	ROUND(SUM(Profit)/SUM(Sales) * 100, 2) AS Average_Profit_Margin, 
	COUNT(DISTINCT `Order ID`) AS Num_Orders,
    Region
FROM sample___superstore
GROUP BY Discount_Range, Region
HAVING Discount_Range = 'High' || Discount_Range = 'Medium'
ORDER BY Average_Profit_Margin ASC