USE SummerInterns;

select * from AOP13;

SELECT ANA_ID
FROM AOP13;
 select RIGHT('236986-P906506-481884',6) 
 FROM AOP13;

 SELECT ANA_ID
 FROM [dbo].[AOP13]
 SELECT * , LEFT (ANA_ID,6) AS LEFT1,
		SUBSTRING(ANA_ID,8,6) AS MIDDLE1,
        RIGHT (ANA_ID,6)AS RIGHT1
		FROM  [dbo].[AOP13];