/****** Script for SelectTopNRows command from SSMS  ******/
-- Limpieza de tabla de clientes
SELECT  
       c.customerKey as Customer_Key,
       c.FirstName as First_name,
       c.LastName as Last_name,
	   c.FirstName + ' ' + c.LastName as Fullname,
CASE
       c.Gender WHEN 'M' THEN 'Male'
	            WHEN 'F' THEN 'Female'
				END 
				AS Gender,
       c.DateFirstPurchase as Date_First_Purchase,
	   g.city as Customer_city  -- Union desde la tabla Geography 
FROM 
       [AdventureWorksDW2019].[dbo].[DimCustomer] as c
LEFT JOIN 
       dbo.DimGeography as g ON g.GeographyKey = c.GeographyKey
ORDER BY
       Customer_Key ASC
