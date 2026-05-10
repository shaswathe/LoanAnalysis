--Created A DataBase For The Problems
CREATE DATABASE LoanRiskAnalysis;

--Drop A Database 
DROP DATABASE LoanRiskAnalysis;


--Changing The DataBase
USE LoanRiskAnalysis;


--Checking The Internal DataBase
SELECT *
FROM INTERNAL_BANK_DATA;

--Checking the External Database
SELECT *
FROM EXTERNAL_CIBIL_DATA;


--Checking the Top 5 Data's for the Internal Data
SELECT TOP 5 *
FROM INTERNAL_BANK_DATA;
--Checking the last 5 Data's for the Internal Data
SELECT TOP 5 *
FROM INTERNAL_BANK_DATA
ORDER BY PROSPECTID DESC;


--Checking the top 5 data's for the External Data
SELECT Top 5 *
FROM EXTERNAL_CIBIL_DATA;
--Checking the top 5 data's for the External Data
SELECT TOP 5*
FROM EXTERNAL_CIBIL_DATA
ORDER BY PROSPECTID DESC;


--Count Of All the Rows
SELECT COUNT(*) AS Total_Records
FROM INTERNAL_BANK_DATA;


--Getting Only the Column_name and Data_Type
SELECT COLUMN_NAME, DATA_TYPE 
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME= 'INTERNAL_BANK_DATA';


--Find Missing Values in the Internal_Data
SELECT *
FROM INTERNAL_BANK_DATA
WHERE PROSPECTID IS NULL;

--Find Missing Values in the External_Data
SELECT *
FROM EXTERNAL_CIBIL_DATA
WHERE PROSPECTID IS NULL;


--Find Duplicate Values in the Internal_Data
SELECT PROSPECTID, COUNT(*) AS Duplicate_Number
FROM INTERNAL_BANK_DATA
GROUP BY PROSPECTID
HAVING COUNT(*) > 1;

--Find Duplicate Values in the External_Data
SELECT PROSPECTID, COUNT(*) AS Duplicate_number
FROM EXTERNAL_CIBIL_DATA
GROUP BY PROSPECTID
HAVING COUNT(*) > 1;


--Find Invalid Values In The Internal Data
SELECT *
FROM INTERNAL_BANK_DATA
WHERE Age_Oldest_TL = '-99999';

--Find Invalid Values Values In the External Data
SELECT *
FROM EXTERNAL_CIBIL_DATA
WHERE tot_enq = '-99999';


-- Find minimum and maximum income in the External Data
SELECT 
MIN(TRY_CAST(NETMONTHLYINCOME AS FLOAT)) AS Min_Income,
MAX(TRY_CAST(NETMONTHLYINCOME AS FLOAT)) AS Max_Income
FROM EXTERNAL_CIBIL_DATA;


--Fix Data Types
Alter Table EXTERNAL_CIBIL_DATA ALTER COLUMN AGE SMALLINT;
Alter Table EXTERNAL_CIBIL_DATA ALTER COLUMN CC_Flag INT;
Alter Table EXTERNAL_CIBIL_DATA ALTER COLUMN PL_Flag INT;
Alter Table EXTERNAL_CIBIL_DATA ALTER COLUMN HL_Flag INT;
Alter Table EXTERNAL_CIBIL_DATA ALTER COLUMN GL_Flag INT;


--Creating Primary Key & Foreign Key
ALTER TABLE INTERNAL_BANK_DATA
ADD PRIMARY KEY (PROSPECTID);

ALTER TABLE EXTERNAL_CIBIL_DATA
ADD CONSTRAINT FK_ProspectID
FOREIGN KEY (PROSPECTID)
REFERENCES INTERNAL_BANK_DATA(PROSPECTID);


--Calculate the Average Income
SELECT AVG(TRY_CAST(NETMONTHLYINCOME AS FLOAT)) AS Avg_income
FROM EXTERNAL_CIBIL_DATA;


--Credit Score Distribution
SELECT Credit_Score, COUNT(*) AS Total_Customers
FROM EXTERNAL_CIBIL_DATA
GROUP BY Credit_Score
ORDER BY Total_Customers DESC;


--Replace Invalid Values With Null
SELECT NULLIF(tot_enq, '-99999') AS Clean_tot_enq
FROM EXTERNAL_CIBIL_DATA;


--Updating the Values with Null
UPDATE EXTERNAL_CIBIL_DATA
SET tot_enq = NULL
WHERE tot_enq = '-99999';


--Checking the Null Value is implemented or not 
select Clean_tot_enq
from EXTERNAL_CIBIL_DATA
Where tot_enq = '-99999';


--Total_Customers
SELECT COUNT(DISTINCT PROSPECTID) AS Total_Customers
FROM INTERNAL_BANK_DATA;


--Creating the Average Credit Score
SELECT AVG(TRY_CAST(Credit_Score AS FLOAT)) AS Avg_Credit_Score
FROM EXTERNAL_CIBIL_DATA;


--Loan Product Flags
SELECT CC_Flag, COUNT(*) AS Total_Customers
FROM EXTERNAL_CIBIL_DATA
GROUP BY CC_Flag


-- Average Age
SELECT AVG(TRY_CAST(AGE AS FLOAT)) AS Avg_Age
FROM EXTERNAL_CIBIL_DATA


--Income Segment
SELECT 
CASE
	WHEN NETMONTHLYINCOME < 25000 THEN 'Low_Income'
	WHEN NETMONTHLYINCOME < 50000 THEN 'Medium_Income'
	ELSE'High_Income'
END AS Income_Group,
COUNT(*) AS Total_Customers
FROM EXTERNAL_CIBIL_DATA
GROUP BY 
CASE 
	WHEN NETMONTHLYINCOME < 25000 THEN 'Low_Income'
	WHEN NETMONTHLYINCOME < 50000 THEN 'Medium_Income'
	ELSE 'High_Income'
END;