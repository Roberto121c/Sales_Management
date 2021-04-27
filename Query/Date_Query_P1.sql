/****** Script for SelectTopNRows command from SSMS  ******/
-- Limpieza de la Tabla DimDate

SELECT 
      [DateKey],
      [FullDateAlternateKey] as Date,
      [EnglishDayNameOfWeek] as Day,
      [WeekNumberOfYear] as WeekNo,
      [EnglishMonthName] as Month,
      [MonthNumberOfYear] as MonthNo,
      [CalendarQuarter] as Quarter,
      [CalendarYear] as Year
FROM 
      [AdventureWorksDW2019].[dbo].[DimDate]
WHERE 
       CalendarYear >= 2019
