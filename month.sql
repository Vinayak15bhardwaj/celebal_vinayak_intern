USE SummerInterns;
  
  SELECT *
  FROM [dbo].[Fact_Employee_Central];

  SELECT Last_Promotion_Date
  FROM [dbo].[Fact_Employee_Central];




  SELECT LAST_Promotion_Date
 FROM [dbo].[Fact_Employee_Central]
 WHERE LAST_Promotion_Date IS NOT NULL
 
    alter table [dbo].[Fact_Employee_Central]
   add tenure  nvarchar(50);
      

	  




	SELECT * , case when datedif<=18 then '0-18' when datedif>18 and datedif<=36 then '18-36'
	when datedif>36 and datedif<=54 then '36-54'
	when datedif>54 then '54+' end as range
	from (select * ,datediff(month,Employment_Details_Hire_Date ,'2018-04-01')as datedif
	from [dbo].[Fact_Employee_Central]) as X