SELECT a.ProductModelID, a.Name AS ModelName, b.ProductID, b.Name AS ProductName
FROM SalesLT.ProductModel a
	JOIN SalesLT.Product b ON a.ProductModelID = b.ProductModelID
WHERE a.Name LIKE 'ML%' AND b.Name LIKE '%52'
ORDER BY ModelName;