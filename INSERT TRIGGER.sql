create database needed;
drop database needed;
drop table [Dynamic-Dimension-Attributes-Sample-Data];
create table [Dynamic-Dimension-Attributes-Sample-Data] 
(
invoice nvarchar(50),
region nvarchar(50),
industry nvarchar(50),
vertical nvarchar(50),
amount nvarchar(50),
coat nvarchar(50),
);

bulk insert [Dynamic-Dimension-Attributes-Sample-Data]
from 'E:\data\case.txt'
with
(
fieldterminator = '\t',
rowterminator  = '\n', 
firstrow = 2
)

drop table table2;

create table table2 
(
invoice1 nvarchar(50),
region1 nvarchar(50),
industry1 nvarchar(50),
vertical1 nvarchar(50),
amount1 nvarchar(50),
cost1 nvarchar(50),
);

INSERT INTO [Dynamic-Dimension-Attributes-Sample-Data]
VALUES('1020','west','manufacturing','V2', '$2,000.00' ,' $2,000.00 ');

SELECT * FROM table2

SELECT * FROM [Dynamic-Dimension-Attributes-Sample-Data]

Alter Trigger [TR_Dynamic-Dimension-Attributes-Sample-Data]
on   [Dynamic-Dimension-Attributes-Sample-Data]
 AFTER insert
 as
BEGIN
DECLARE @invoice1 NVARCHAR(100)
DECLARE @region1 NVARCHAR(100)
DECLARE @INDUSTRY1 NVARCHAR(100)
DECLARE @VERTICAL1 NVARCHAR(100)
DECLARE @AMOUNT1 NVARCHAR(100)
DECLARE @COST1 NVARCHAR(100)

Insert table2(invoice1,region1,industry1,vertical1,amount1,cost1)
select invoice1,region1,industry1,vertical1,amount1,cost1 from inserted i
left join table2 t on i.invoice = t.invoice1
where t.invoice1 is null






/*UPDATE table2
SET @invoice1=inserted.invoice  from inserted
SET @region1 ='inserted.region' from inserted  
SET @INDUSTRY1='inserted.industry' from inserted 
SET @VERTICAL1 = 'inserted.vertical' from inserted  
SET @AMOUNT1 = 'INSERTED.AMOUNT' from inserted 
SET @COST1 = 'INSERTED.coat' FROM inserted
 WHERE invoice1=@invoice1
INSERT INTO table2
VALUES(@invoice1 ,@REGION1,@INDUSTRY1,@VERTICAL1,@AMOUNT1,@COST1)
END


