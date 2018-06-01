create database index123;
use index123;

create table table1
(
first_name nvarchar(100),
last_name nvarchar(100),
age int,
attrition nvarchar(100),
business_travel nvarchar(100),
daily_rate int,
department nvarchar(100),
distance_from_home int,
education int,
edu_field nvarchar(100),
emp_count int,
emp_num int,
env_satisfaction int,
gender nvarchar(100),
hourly_rate int,
jobinvolvement int,
job_level int,
job_role nvarchar(100),
job_satisfaction int,
marital_status nvarchar(100),
monthly_inc int,
monthly_rate int,
NumCompaniesWorked int,
Over18 nvarchar(100),
OverTime  nvarchar(100),
PercentSalaryHike int,
PerformanceRating int,
RelationshipSatisfaction int,
StandardHours int,
StockOptionLevel int,
TotalWorkingYears int,
TrainingTimesLastYear int,
WorkLifeBalance int,
YearsAtCompany int,
YearsInCurrentRole int,
YearsSinceLastPromotion int,
YearsWithCurrManager int,
);
select * from table1;

bulk insert [dbo].[table1]
from 'E:\data\hr\HR-Employee-Attrition.txt'
with
(
FIELDTERMINATOR = '\',
ROWTERMINATOR = '\n',
FIRSTROW = 2
) 

create table table2
(
first_name1 nvarchar(100),
last_name1 nvarchar(100),
age1 int,
attrition1 nvarchar(100),
business_travel1 nvarchar(100),
daily_rate1 int,
department1 nvarchar(100),
distance_from_home1 int,
education1 int,
edu_field1 nvarchar(100),
emp_count1 int,
emp_num1 int,
env_satisfaction1 int,
gender1 nvarchar(100),
hourly_rate1 int,
jobinvolvement1 int,
job_level1 int,
job_role1 nvarchar(100),
job_satisfaction1 int,
marital_status1 nvarchar(100),
monthly_inc1 int,
monthly_rate1 int,
NumCompaniesWorked1 int,
Over18_1 nvarchar(100),
OverTime1  nvarchar(100),
PercentSalaryHike1 int,
PerformanceRating1 int,
RelationshipSatisfaction1 int,
StandardHours1 int,
StockOptionLevel1 int,
TotalWorkingYears1 int,
TrainingTimesLastYear1 int,
WorkLifeBalance1 int,
YearsAtCompany1 int,
YearsInCurrentRole1 int,
YearsSinceLastPromotion1 int,
YearsWithCurrManager1 int,
);
select * from table2;









)