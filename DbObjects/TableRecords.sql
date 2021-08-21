INSERT INTO dbo.Deposits(Principal,StartDate,EndDate,InterestRate,Term)
VALUES
(1000000,CAST('01-Sep-2021' as date),CAST('01-Sep-2022' as date),.1,1)
,(1000000,CAST('02-Sep-2021' as date),CAST('02-Sep-2023' as date),.2,2)
,(1000000,CAST('03-Sep-2021' as date),CAST('03-Sep-2024' as date),.3,3)
,(1000000,CAST('04-Sep-2021' as date),CAST('04-Sep-2025' as date),.4,4)
,(1000000,CAST('05-Sep-2021' as date),CAST('05-Sep-2026' as date),.5,5)
,(1000000,CAST('06-Sep-2021' as date),CAST('06-Sep-2022' as date),.1,1)
,(1000000,CAST('02-Sep-2021' as date),CAST('02-Sep-2023' as date),.2,2)
,(1000000,CAST('03-Sep-2021' as date),CAST('03-Sep-2024' as date),.3,3)
,(1000000,CAST('04-Sep-2021' as date),CAST('04-Sep-2025' as date),.4,4)
,(1000000,CAST('05-Sep-2021' as date),CAST('05-Sep-2026' as date),.5,5)
,(1000000,CAST('06-Sep-2021' as date),CAST('06-Sep-2022' as date),.1,1)
,(1000000,CAST('02-Sep-2021' as date),CAST('02-Sep-2023' as date),.2,2)
,(1000000,CAST('03-Sep-2021' as date),CAST('03-Sep-2024' as date),.3,3)
,(1000000,CAST('04-Sep-2021' as date),CAST('04-Sep-2025' as date),.4,4)
,(1000000,CAST('05-Sep-2021' as date),CAST('05-Sep-2026' as date),.5,5)
,(1000000,CAST('06-Sep-2021' as date),CAST('06-Sep-2022' as date),.1,1)
,(1000000,CAST('02-Sep-2021' as date),CAST('02-Sep-2023' as date),.2,2)
,(1000000,CAST('03-Sep-2021' as date),CAST('03-Sep-2024' as date),.3,3)
,(1000000,CAST('04-Sep-2021' as date),CAST('04-Sep-2025' as date),.4,4)
,(1000000,CAST('05-Sep-2021' as date),CAST('05-Sep-2026' as date),.5,5)
,(1000000,CAST('06-Sep-2021' as date),CAST('06-Sep-2022' as date),.1,1)
,(1000000,CAST('02-Sep-2021' as date),CAST('02-Sep-2023' as date),.2,2)
,(1000000,CAST('03-Sep-2021' as date),CAST('03-Sep-2024' as date),.3,3)
,(1000000,CAST('04-Sep-2021' as date),CAST('04-Sep-2025' as date),.4,4)
,(1000000,CAST('05-Sep-2021' as date),CAST('05-Sep-2026' as date),.5,5)
,(1000000,CAST('06-Sep-2021' as date),CAST('06-Sep-2022' as date),.1,1)
,(1000000,CAST('02-Sep-2021' as date),CAST('02-Sep-2023' as date),.2,2)
,(1000000,CAST('03-Sep-2021' as date),CAST('03-Sep-2024' as date),.3,3)
,(1000000,CAST('04-Sep-2021' as date),CAST('04-Sep-2025' as date),.4,4)
,(1000000,CAST('05-Sep-2021' as date),CAST('05-Sep-2026' as date),.5,5)
,(1000000,CAST('06-Sep-2021' as date),CAST('06-Sep-2022' as date),.1,1)
,(1000000,CAST('02-Sep-2021' as date),CAST('02-Sep-2023' as date),.2,2)
,(1000000,CAST('03-Sep-2021' as date),CAST('03-Sep-2024' as date),.3,3)
,(1000000,CAST('04-Sep-2021' as date),CAST('04-Sep-2025' as date),.4,4)
,(1000000,CAST('05-Sep-2021' as date),CAST('05-Sep-2026' as date),.5,5)
,(1000000,CAST('06-Sep-2021' as date),CAST('06-Sep-2022' as date),.1,1)
,(1000000,CAST('02-Sep-2021' as date),CAST('02-Sep-2023' as date),.2,2)
,(1000000,CAST('03-Sep-2021' as date),CAST('03-Sep-2024' as date),.3,3)
,(1000000,CAST('04-Sep-2021' as date),CAST('04-Sep-2025' as date),.4,4)
,(1000000,CAST('05-Sep-2021' as date),CAST('05-Sep-2026' as date),.5,5)
,(1000000,CAST('06-Sep-2021' as date),CAST('06-Sep-2022' as date),.1,1)
,(2000000,CAST('02-Sep-2021' as date),CAST('02-Sep-2023' as date),.2,2)
,(3000000,CAST('03-Sep-2021' as date),CAST('03-Sep-2024' as date),.3,3)
,(4000000,CAST('04-Sep-2021' as date),CAST('04-Sep-2025' as date),.4,4)
,(5000000,CAST('05-Sep-2021' as date),CAST('05-Sep-2026' as date),.5,5)
,(1000000,CAST('06-Sep-2021' as date),CAST('06-Sep-2022' as date),.1,1)
,(2000000,CAST('02-Sep-2021' as date),CAST('02-Sep-2023' as date),.2,2)
,(3000000,CAST('03-Sep-2021' as date),CAST('03-Sep-2024' as date),.3,3)
,(4000000,CAST('04-Sep-2021' as date),CAST('04-Sep-2025' as date),.4,4)
,(5000000,CAST('05-Sep-2021' as date),CAST('05-Sep-2026' as date),.5,5)






/*
SELECT GETDATE(),DATEADD(day,-1, DATEADD(year,2,GETDATE()))

select CAST(GETDATE() as date)
*/

select * from dbo.Deposits
-- delete from dbo.Deposits
select sum(maturityamount) from dbo.deposits




