USE SummerInterns;

select  * 
from [dbo].[acess_matrix];



select distinct username,fullname,[Business  Email Information Email Address],
[BU/SSU Description] = STUFF(
						(select ',' +[BU/SSU Description] 
						from [dbo].[acess_matrix] t1
						where  t1.username =t2.username
						FOR XML path('')),1,1,'') from [dbo].[acess_matrix] t2
						                                                 
							group by  username,fullname,[Business  Email Information Email Address];