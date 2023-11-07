--DAY 7: USING  Fifa_21_RD1


---QUESTION 1. IDENTIFY Players who possess high value but receive relatively Low Wages
-- USING AVERAGE OF BOTH AS THRESHOLD
SELECT AVG(Wage) FROM Fifa_21_RD1;

SELECT AVG(Value) FROM Fifa_21_RD1;

--QUERY
SELECT Name, Value, Wage
FROM Fifa_21_RD1
WHERE Value >(SELECT AVG(Value) FROM Fifa_21_RD1)
 AND Wage <(SELECT AVG(Wage) FROM Fifa_21_RD1 )
ORDER BY Value DESC
LIMIT 10;

---QUESTION 2. Determine the count of players avaliable in the dataset for each position
---Changing Column name for easy reference
ALTER TABLE  Fifa_21_RD1  RENAME 'Best Position' TO Best_Position;
-- QUERY
SELECT Best_Position, COUNT(Name) as Count_of_Players
FROM Fifa_21_RD1
GROUP BY Best_Position;

---QUESTION 3. Find out which club has the largest representation of players in the dataset
SELECT Club, COUNT(Name) as Representation_of_Players
FROM Fifa_21_RD1
GROUP BY Club
ORDER BY COUNT(Name) DESC
LIMIT 1;

---QUESTION 4: List the top 10 players with the highest OVA and POT
---Chaging Column name for easy reference
ALTER TABLE  Fifa_21_RD1  RENAME '↓OVA' TO OVA;

SELECT * FROM Fifa_21_RD1;
SELECT MAX(OVA) FROM Fifa_21_RD1;
SELECT MAX(POT) FROM Fifa_21_RD1;

---QUERY
SELECT Name,OVA,POT FROM Fifa_21_RD1
ORDER BY OVA DESC
LIMIT 10;
