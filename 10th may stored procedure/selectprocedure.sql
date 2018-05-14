USE CUST;


CREATE TABLE Persons (
    PersonID int,
    LastName varchar(30),
    FirstName varchar(30),
    
);

INSERT INTO Persons(PersonID , LastName ,FirstName) VALUES ( 3 , 'F' , 'Cscd' );
INSERT INTO Persons(PersonID , LastName ,FirstName) VALUES ( 5 , 'B' , 'Chg' );
INSERT INTO Persons(PersonID , LastName ,FirstName) VALUES ( 8 , 'N' , 'M' );
INSERT INTO Persons(PersonID , LastName ,FirstName) VALUES ( 9,  'R' , 'H' );
SELECT * from Persons;


/* USE CUST;
GO-----BEGIN A NEW BATCH
 
 CREATE PROC Persons66 LastName nvarchar(255)
 AS
BEGIN1
 SELECT *

	FROM 
	Persons

	WHERE LastName = 'N ';
	
END*/

/*USE CUST;
GO-----BEGIN A NEW BATCH
 
 CREATE PROC Persons6 @LastName nvarchar(30)=NULL, @FirstName nvarchar(30)=NULL
 AS
 SELECT *

	FROM 
	Persons

	WHERE LastName = ISNULL ( @LastName ,LastName )
	AND FirstName  LIKE '%' + ISNULL(@FirstName, FirstName ) + '%'
GO*/


USE CUST;
GO-----BEGIN A NEW BATCH
 
 CREATE PROC Persons7 @LastName nvarchar(30), @FirstName  int output  
 AS
SELECT @FirstName = count(*) 
FROM CUST.Persons61
WHERE LastName = @LastName
GO
