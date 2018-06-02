create database mask;
 use mask;

 create table customer
 (
f_name nvarchar(100),
l_name nvarchar(100),
email nvarchar(100),
pan_no nvarchar(100),
tax_file_no nvarchar(100)
 );

 select * from customer;
 drop table customer;
 
 insert into customer
 values('A','B','abc@g.com','12344658','94448768'),
		('B','C','xyz@h.com','56784645','54324852'),
		('C','D','pqr@y.com','13461245','85241532');

ALTER TABLE customer alter column email
ADD Masked  with (FUNCTION = 'EMAIL()');

ALTER TABLE CUSTOMER ALTER COLUMN  pan_no
ADD MASKed WITH (FUNCTION = 'PARTIAL(1,"XXXX",2)');

ALTER TABLE CUSTOMER ALTER COLUMN TAX_FILE_NO
ADD MASKed WITH (FUNCTION = 'default()');

create login john with password = 'jai@1234',default_database = mask
create user john for login john;

grant select on customer to  john;

create login ajay with password = 'jai@1234',default_database = mask
create user ajay for login ajay;

grant select on customer to  ajay;

grant unmask to ajay;