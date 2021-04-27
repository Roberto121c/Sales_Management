/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
       [ProductKey]
      ,[OrderDateKey]
      ,[DueDateKey]
      ,[ShipDateKey]
      ,[CustomerKey]
      ,[SalesOrderNumber]
      ,[SalesAmount]
FROM   [AdventureWorksDW2019].[dbo].[FactInternetSales]
WHERE
       LEFT(OrderDateKey, 4) >= YEAR(Getdate()) - 2
ORDER BY
       OrderDateKey ASC