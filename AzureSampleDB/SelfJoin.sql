SELECT a.ProductCategoryID, a.Name AS Product, a.rowguid, a.ModifiedDate, b.Name AS ParentProduct
FROM SalesLT.ProductCategory a
	INNER JOIN SalesLT.ProductCategory b ON a.ParentProductCategoryID = b.ProductCategoryID
WHERE a.ParentProductCategoryID IS NOT NULL
ORDER BY ParentProduct, Product;