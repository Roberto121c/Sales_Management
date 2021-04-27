/****** Script for SelectTopNRows command from SSMS  ******/
-- Limpieza de la Tabla DimDate

SELECT 
      [DateKey],
      [FullDateAlternateKey] as Date,
      --,[DayNumberOfWeek]
      [EnglishDayNameOfWeek] as Day,
      --,[SpanishDayNameOfWeek]
      --,[FrenchDayNameOfWeek]
      --,[DayNumberOfMonth]
      --,[DayNumberOfYear]
      [WeekNumberOfYear] as WeekNo,
      [EnglishMonthName] as Month,
      --,[SpanishMonthName]
      --,[FrenchMonthName]
      [MonthNumberOfYear] as MonthNo,
      [CalendarQuarter] as Quarter,
      [CalendarYear] as Year
      --,[CalendarSemester]
      --,[FiscalQuarter]
      --,[FiscalYear]
      --,[FiscalSemester]
FROM 
      [AdventureWorksDW2019].[dbo].[DimDate]
WHERE 
       CalendarYear >= 2019