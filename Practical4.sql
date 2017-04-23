--list all foregin staff from dmit and sort by ascending order of staff name within descending order of citizenship
SELECT * FROM Staff_Relation
WHERE Citizenship != 'Singapore' and Department_Cd = 'DMIT'
ORDER BY Staff_Name, Citizenship DESC

--list all male staff who are sg citizen born in the sixties and rename column as Singapore Men
SELECT Staff_Name AS 'Singaporean Men' FROM Staff_Relation
WHERE Gender = 'M' AND Date_Of_Birth BETWEEN '1960/1/1' AND '1969/12/31'

--list all staff who are divorced or widowed
SELECT Marital_Status, Staff_Name FROM Staff_Relation
WHERE Marital_Status = 'D' OR Marital_Status = 'W'

--list staff who are bachelor degree holders or have letter n in their name
SELECT Highest_Qln, Staff_Name FROM Staff_Relation
WHERE Highest_Qln LIKE 'B%' OR Staff_Name LIKE '%n%'
ORDER BY Highest_Qln, Staff_Name

--list female staff that are divorced or widowed
SELECT Marital_Status, Staff_Name FROM Staff_Relation
WHERE (Marital_Status = 'D' OR Marital_Status = 'W') AND Gender = 'F'

--list female staff paid btw 4000 & 7000, male staff paid btw 2000 & 6000
SELECT Gender, Pay, Staff_Name FROM Staff_Relation
WHERE (Gender = 'F' AND Pay BETWEEN 4000 AND 7000) OR (Gender = 'M' AND Pay BETWEEN 2000 AND 6000)

--list female staff who are not in grade SSD or SSE & born be4 1963 or pay > 6000 or joined btw 1997 and 2000
SELECT Staff_No, Staff_Name, Gender, Date_Of_Birth, Pay, Grade, Join_Yr FROM Staff_Relation
WHERE (Gender = 'F' AND (Grade != 'SSD' AND Grade != 'SSE') AND Date_Of_Birth < '1963/1/1')
OR Pay >= 6000 OR Join_Yr BETWEEN 1997 AND 2000