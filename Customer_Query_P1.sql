/****** Script for SelectTopNRows command from SSMS  ******/
-- Limpieza de tabla de clientes
SELECT  
       c.customerKey as Customer_Key,
      --,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
       c.FirstName as First_name,
      --,[MiddleName]
       c.LastName as Last_name,
	   c.FirstName + ' ' + c.LastName as Fullname,
      --,[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
CASE
       c.Gender WHEN 'M' THEN 'Male'
	            WHEN 'F' THEN 'Female'
				END 
				AS Gender,
      --,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
      --,[NumberChildrenAtHome]
      --,[EnglishEducation]
      --,[SpanishEducation]
      --,[FrenchEducation]
      --,[EnglishOccupation]
      --,[SpanishOccupation]
      --,[FrenchOccupation]
      --,[HouseOwnerFlag]
      --,[NumberCarsOwned]
      --,[AddressLine1]
      --,[AddressLine2]
      --,[Phone]
       c.DateFirstPurchase as Date_First_Purchase,
      --,[CommuteDistance]
	   g.city as Customer_city  -- Union desde la tabla Geography 
FROM 
       [AdventureWorksDW2019].[dbo].[DimCustomer] as c
LEFT JOIN 
       dbo.DimGeography as g ON g.GeographyKey = c.GeographyKey
ORDER BY
       Customer_Key ASC