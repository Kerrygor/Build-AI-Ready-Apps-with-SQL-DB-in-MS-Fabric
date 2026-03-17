CREATE VIEW SalesLT.MostSoldProduct AS
SELECT TOP 1 p.ProductID, p.Name AS ProductName, SUM(od.OrderQty) AS TotalQuantitySold
FROM SalesLT.SalesOrderDetail od
JOIN SalesLT.Product p ON od.ProductID = p.ProductID
GROUP BY p.ProductID, p.Name
ORDER BY TotalQuantitySold DESC;

GO

