--Data cleanimg for Fifa_21_RD2
SELECT * FROM Fifa_21_RD2
--QUESTION 1.>>>> CLEANING HEIGHT COLUMN
SELECT
	height,
	SUBSTRING(Height,1,1) AS player_height
FROM
	Fifa_21_RD2;

--updating height column to return only the first number
UPDATE Fifa_21_RD2
SET height = SUBSTRING(Height,1,1);

--Changing datatype to numerical format
ALTER TABLE Fifa_21_RD2 ALTER height TYPE INTEGER;
--For consistency so table 1 and 2 can match as height in cm
UPDATE Fifa_21_RD2
SET height = height*30.48;

--TO CHECK UPDATED DATATYPE
SELECT COLUMN_NAME, DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME ='Fifa_21_RD2';

-- QUESTION 2>>>>CLEANING WEIGHT COLUMN
--a) Removing the lbs.
--Using the SUBSTRING function
SELECT
	weight,
	SUBSTRING(weight,1,3) AS player_weight
FROM
	Fifa_21_RD2 ;

--Checking for string consistency in the player_weight column using CTE, DISTINCT and LEN function
WITH players_weight AS(
SELECT
	weight,
	SUBSTRING(weight,1,3) AS player_weight
FROM
	Fifa_21_RD2
)

SELECT
	DISTINCT LEN(player_weight) AS weight
FROM
	players_weight;

UPDATE Fifa_21_RD2
SET Weight  = SUBSTRING(Weight,1,3);

--b) Changing the data type
ALTER TABLE Fifa_21_RD2 ALTER Weight TYPE INTEGER;

--QUESTION 3>>>> CLEANING VALUE COLUMN
 -- First remove dot and replace with space
UPDATE Fifa_21_RD2
SET Value = REPLACE(Value, '.', ' ');
SELECT * FROM Fifa_21_RD2 WHERE Value LIKE '%K';
-- to replace M and k with zeros, first one checks for where space is and replaces the M there with five zeros, accounting for the 0
SELECT value,
CASE
	WHEN Value LIKE '% %' THEN REPLACE(Value, 'M', '00000')
	WHEN Value LIKE '% %' THEN REPLACE(Value, 'K', '00')
    WHEN Value LIKE '%K' THEN REPLACE(Value, 'K', '000')
    WHEN Value LIKE '%M' THEN REPLACE(Value, 'M', '000000')
    ELSE Value
  END
FROM Fifa_21_RD2 ;

UPDATE Fifa_21_RD2
SET Value =
  CASE
	WHEN Value LIKE '% %' THEN REPLACE(Value, 'M', '00000')
	WHEN Value LIKE '% %' THEN REPLACE(Value, 'K', '00')
    WHEN Value LIKE '%K' THEN REPLACE(Value, 'K', '000')
    WHEN Value LIKE '%M' THEN REPLACE(Value, 'M', '000000')
    ELSE Value
  END;

--Removing spaces
  UPDATE Fifa_21_RD2
  SET Value = REPLACE(Value, ' ', '');

 --Removing currency sign using Substring
 SELECT
	value,
	SUBSTRING(value,2,LEN(value)) AS value
FROM
	Fifa_21_RD2;

 UPDATE Fifa_21_RD2
 SET Value = SUBSTRING(value,2,LEN(value));

-- Changing the data type
ALTER TABLE Fifa_21_RD2 ALTER Value TYPE INTEGER;

--QUESTION 4>>> CLEANING WAGE COLUMN
 -- First remove dot and replace with space
UPDATE Fifa_21_RD2
SET Wage  = REPLACE(Wage, '.', ' ');
SELECT * FROM Fifa_21_RD2;
-- to replace M and k with zeros, first one checks for where space is and replaces the M there with five zeros, accounting for the 0
SELECT Wage,
CASE
	WHEN Wage LIKE '% %' THEN REPLACE(Wage, 'M', '00000')
	WHEN Wage LIKE '% %' THEN REPLACE(Wage, 'K', '00')
    WHEN Wage LIKE '%K' THEN REPLACE(Wage, 'K', '000')
    WHEN Wage LIKE '%M' THEN REPLACE(Wage, 'M', '000000')
    ELSE Wage
  END
FROM Fifa_21_RD2 ;

UPDATE Fifa_21_RD2
SET Wage =
 CASE
	WHEN Wage LIKE '% %' THEN REPLACE(Wage, 'M', '00000')
	WHEN Wage LIKE '% %' THEN REPLACE(Wage, 'K', '00')
    WHEN Wage LIKE '%K' THEN REPLACE(Wage, 'K', '000')
    WHEN Wage LIKE '%M' THEN REPLACE(Wage, 'M', '000000')
    ELSE Wage
  END

--Removing spaces
  UPDATE Fifa_21_RD2
  SET Wage = REPLACE(Wage,' ', '');

 --Removing currency sign using Substring
 SELECT
	Wage ,
	SUBSTRING(Wage,2,LEN(Wage)) AS wage
FROM
	Fifa_21_RD2;

 UPDATE Fifa_21_RD2
 SET Wage = SUBSTRING(Wage,2,LEN(Wage));

-- Changing the data type
ALTER TABLE Fifa_21_RD2 ALTER Wage TYPE INTEGER;

--QUESTION 5>>>> CLEANING RELEASE CLAUSE COLUMN
--Renaming the Column
ALTER TABLE  Fifa_21_RD2 RENAME 'release Clause' TO Release_Clause;

UPDATE Fifa_21_RD2
SET Release_Clause = REPLACE(Release_Clause, '.', ' ');
SELECT * FROM Fifa_21_RD2;
-- to replace M and k with zeros, first one checks for where space is and replaces the M there with five zeros, accounting for the 0
SELECT Release_Clause,
CASE
	WHEN Release_Clause LIKE '% %' THEN REPLACE(Release_Clause, 'M', '00000')
	WHEN Release_Clause LIKE '% %' THEN REPLACE(Release_Clause, 'K', '00')
    WHEN Release_Clause LIKE '%K' THEN REPLACE(Release_Clause, 'K', '000')
    WHEN Release_Clause LIKE '%M' THEN REPLACE(Release_Clause, 'M', '000000')
    ELSE Release_Clause
  END
FROM Fifa_21_RD2 ;

UPDATE Fifa_21_RD2
SET Release_Clause =
 CASE
	WHEN Release_Clause LIKE '% %' THEN REPLACE(Release_Clause, 'M', '00000')
	WHEN Release_Clause LIKE '% %' THEN REPLACE(Release_Clause, 'K', '00')
    WHEN Release_Clause LIKE '%K' THEN REPLACE(Release_Clause, 'K', '000')
    WHEN Release_Clause LIKE '%M' THEN REPLACE(Release_Clause, 'M', '000000')
    ELSE Release_Clause
  END

--Removing spaces
  UPDATE Fifa_21_RD2
  SET Release_Clause = REPLACE(Release_Clause, ' ', '');

 --Removing currency sign using Substring
 SELECT
	Release_Clause,
	SUBSTRING(Release_Clause,2,LEN(Release_Clause)) AS Release_Clause
FROM
	Fifa_21_RD2;

 UPDATE Fifa_21_RD2
 SET Release_Clause = SUBSTRING(Release_Clause,2,LEN(Release_Clause));

-- Changing the data type
ALTER TABLE Fifa_21_RD2 ALTER Release_Clause TYPE INTEGER;
SELECT * FROM Fifa_21_RD2

--QUESTION 6>>> REMOVING STARS FROM W/F COLUMN
SELECT
	W_F,
	SUBSTRING(W_F,1,1) AS W_F
FROM
	Fifa_21_RD2;

UPDATE Fifa_21_RD2
 SET W_F =SUBSTRING(W_F,1,1)

 --Changing datatype
 ALTER TABLE Fifa_21_RD2 ALTER W_F TYPE INTEGER;

 --QUESTION 7>>> REMOVING STARS FROM SM COLUMN
SELECT
	SM,
	SUBSTRING(SM,1,1) AS SM
FROM
	Fifa_21_RD2;

UPDATE Fifa_21_RD2
 SET SM =SUBSTRING(SM,1,1)

 --Changing datatype
 ALTER TABLE Fifa_21_RD2 ALTER SM TYPE INTEGER;

 --QUESTION 8>>> REMOVING STARS FROM IR COLUMN
SELECT
	IR,
	SUBSTRING(IR,1,1) AS IR
FROM
	Fifa_21_RD2;

UPDATE Fifa_21_RD2
 SET IR =SUBSTRING(IR,1,1)

 --Changing datatype
 ALTER TABLE Fifa_21_RD2 ALTER IR TYPE INTEGER;
