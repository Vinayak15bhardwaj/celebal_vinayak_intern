
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

select *
from [Dynamic-Dimension-Attributes-Sample-Data];

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

select *
from table2;

update   [Dynamic-Dimension-Attributes-Sample-Data]
set industry = 'manufacturing' 
where invoice = 1009 ;

INSERT INTO [Dynamic-Dimension-Attributes-Sample-Data](invoice,region,industry,vertical,amount,coat)
VALUES(1013,'west','manufacturing','V2', '$2,000.00' ,' $2,000.00 ');


aLTER Trigger [TR_Dynamic-Dimension-Attributes-Sample-Data]
on   [Dynamic-Dimension-Attributes-Sample-Data]
 AFTER UPDATE
 as

BEGIN
DECLARE @invoice1 NVARCHAR(100)
DECLARE @REGION1 NVARCHAR(100)
DECLARE @INDUSTRY1 NVARCHAR(100)
DECLARE @VERTICAL1 NVARCHAR(100)
DECLARE @AMOUNT1 NVARCHAR(100)
DECLARE @COST1 NVARCHAR(100)

select @invoice1 = inserted.invoice  from inserted
select @REGION1 = inserted.REGION  from inserted
select @INDUSTRY1 = inserted.industry  from inserted
select @VERTICAL1 = inserted.vertical from inserted
select @AMOUNT1 = inserted.amount   from inserted
select @COST1 = inserted.coat  from inserted
DELETE FROM table2 WHERE invoice1=@invoice1
INSERT INTO table2
VALUES(@invoice1 ,@REGION1,@INDUSTRY1,@VERTICAL1,@AMOUNT1,@COST1)
END


SELECT * FROM table2

SELECT * FROM [Dynamic-Dimension-Attributes-Sample-Data]

ALTER Trigger [TR_Dynamic-Dimension-Attributes-Sample-Data]
on   [Dynamic-Dimension-Attributes-Sample-Data]
 AFTER insert
 as

BEGIN
DECLARE @invoice1 NVARCHAR(100)
DECLARE @REGION1 NVARCHAR(100)
DECLARE @INDUSTRY1 NVARCHAR(100)
DECLARE @VERTICAL1 NVARCHAR(100)
DECLARE @AMOUNT1 NVARCHAR(100)
DECLARE @COST1 NVARCHAR(100)

select @invoice1 = inserted.invoice  from inserted
select @REGION1 = inserted.REGION  from inserted
select @INDUSTRY1 = inserted.industry  from inserted
select @VERTICAL1 = inserted.vertical from inserted
select @AMOUNT1 = inserted.amount   from inserted
select @COST1 = inserted.coat  from inserted
DELETE FROM table2 WHERE invoice1=@invoice1
SELECT * FROM inserted
END

