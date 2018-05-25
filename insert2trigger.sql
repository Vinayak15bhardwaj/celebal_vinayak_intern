create database b;
use b;
drop database b;

create table titanic1
(
passenger nvarchar(50) ,
survived nvarchar(50),
pclass nvarchar(50) ,
name1 nvarchar(50) ,
sex nvarchar(50) ,
age nvarchar(50) ,
sibsp nvarchar(50) ,
parch nvarchar(50) ,
ticket nvarchar(50) ,
fare nvarchar(50) ,
cabin nvarchar(50) ,
embarked nvarchar(50) ,
);

select * from [dbo].[titanic1];

drop table [dbo].[titanic1];

BULK INSERT [dbo].[titanic1]
from 'E:\data\titanic1.txt'
with
(
fieldterminator = '',
rowterminator = '\n',
firstrow = 2
)

create table table2
(
passenger1 nvarchar(100),
survived1 nvarchar(100),
pclass1 nvarchar(100),
name2 nvarchar(100),
sex1 nvarchar(100),
age1 nvarchar(100),
sibsp1 nvarchar(100),
parch1 nvarchar(100),
ticket1 nvarchar(100),
fare1 nvarchar(100),
cabin1 nvarchar(100),
embarked1 nvarchar(100),
)

select * from table2;

INSERT INTO [dbo].[titanic1] (passenger,survived,pclass,name1,sex,
age,sibsp,parch,ticket,fare,cabin,embarked)
values('1000','1','2','pooter,ram',',male','30','1','0','PC 17111','71.2833','C121','s');

create Trigger tr_titanic
on   [dbo].[titanic1]
 AFTER INSERT
 as
BEGIN
DECLARE @passenger1 NVARCHAR(100)
DECLARE @survived1 NVARCHAR(100)
DECLARE @pclass1 NVARCHAR(100)
DECLARE @name2 NVARCHAR(100)
DECLARE @sex1 NVARCHAR(100)
DECLARE @age1 NVARCHAR(100)
DECLARE @sibsp1 NVARCHAR(100)
DECLARE @parch1 NVARCHAR(100)
DECLARE @ticket1 NVARCHAR(100)
DECLARE @fare1 NVARCHAR(100)
DECLARE @cabin1 NVARCHAR(100)
DECLARE @embarked1 NVARCHAR(100)

select @passenger1 = inserted.passenger  from inserted
select @survived1 = inserted.survived from inserted
select @pclass1 = inserted.pclass  from inserted
select @name2 = inserted.name1 from inserted
select @sex1 = inserted.sex   from inserted
select @age1 = inserted.age  from inserted
select @sibsp1 = inserted.sibsp  from inserted
select @parch1 = inserted.parch from inserted
select @ticket1 = inserted.ticket  from inserted
select @fare1 = inserted.fare from inserted
select @cabin1 = inserted.cabin   from inserted
select @embarked1 = inserted.embarked  from inserted
DELETE FROM table2 WHERE passenger1= @passenger1
INSERT INTO table2
VALUES(@passenger1 ,@survived1,@pclass1,@name2,@sex1,@age1,
@sibsp1,@parch1,@ticket1,@fare1,@cabin1,@embarked1)
END
