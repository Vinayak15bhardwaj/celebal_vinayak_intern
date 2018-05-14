
USE SummerInterns;
SELECT * FROM [dbo].[Actual_simulation_AOP_CY_BUHR];
GO ----Begin a new batch

CREATE PROC EMPID4 @Emp nvarchar(255)
AS
BEGIN
 int counter = 1;
while counter <= @Emp 
  BEGIN
  
insert into hierarchy_level_emp_temp(t1,t10)

select (select top 1 [Position ID] from Actual_simulation_AOP_CY_BUHR where [Employee ID]=@Emp),
 [Position ID] from Actual_simulation_AOP_CY_BUHR where
[BU SSU] in (select [BU/SSU Description] from WFS_BUHR_Access where Username=@Emp)
  and [Position ID] is not null
  END;
 END

 EXEC EMPID4 @Emp ='T33835'
    DROP PROC EMPID4
GO
 select * from [dbo].[Actual_simulation_AOP_CY_BUHR]
 