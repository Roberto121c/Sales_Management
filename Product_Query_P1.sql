/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
      p.[ProductKey],
      p.[ProductAlternateKey] as Product_Item_ID,
      p.[EnglishProductName] as Product_Name,
	  ps.EnglishProductSubcategoryName as SubCategory,
	  pc.EnglishProductcategoryName as Category,
      p.[Color] as Product_color,
      p.[Size] as Product_Size,
      p.[ProductLine] as Product_Line,
      p.[ModelName] as Model_Name,
      p.[EnglishDescription]  as Product_Description,
ISNULL      
     (p.[Status], 'OutDated') as Product_Status
FROM 
      [AdventureWorksDW2019].[dbo].[DimProduct] as p
LEFT JOIN 
       dbo.DimProductSubcategory AS ps on ps.ProductSubcategoryKey =p.ProductSubcategoryKey
LEFT JOIN 
       dbo.DimProductCategory AS pc on pc.ProductCategoryKey =ps.ProductCategoryKey