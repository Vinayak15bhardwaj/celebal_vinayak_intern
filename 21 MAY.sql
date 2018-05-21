USE SummerInterns;
select *
from [dbo].[CurrencyConversionRate2018];

select *
from [dbo].[Fact_Employee_Central];

SELECT CAST([FIXPAY_Amount]/[Value] AS FLOAT) AS DOLLAR
FROM
(
select [dbo].[CurrencyConversionRate2018].[Value], [dbo].[Fact_Employee_Central].[FIXPAY_Amount] 
from [dbo].[CurrencyConversionRate2018]
left join [dbo].[Fact_Employee_Central] 
on [dbo].[CurrencyConversionRate2018].[Currency] = [dbo].[Fact_Employee_Central].[CTC_Currency]
 )AS X ;


