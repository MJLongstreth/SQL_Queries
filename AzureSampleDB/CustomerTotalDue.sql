SELECT a.CustomerID, a.FirstName, a.LastName, a.EmailAddress, a.Phone, b.TotalDue
FROM SalesLT.Customer a LEFT JOIN
	(
	SELECT CustomerID, ROUND(SUM(TotalDue), 2) AS TotalDue
	FROM SalesLT.SalesOrderHeader
	GROUP BY CustomerID
	) b ON a.CustomerID = b.CustomerID
WHERE TotalDue IS NOT NULL
ORDER BY TotalDue DESC;