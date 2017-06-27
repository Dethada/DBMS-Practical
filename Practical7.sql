--Q1(a) list mean pay, total pay and staff count in each department
SELECT Department_Cd, AVG(Pay) AS 'Mean Pay', SUM(Pay) AS 'Total Pay', COUNT(Staff_No) AS 'Number of Staff' FROM Staff_Relation
WHERE Type_of_Employment = 'FT'
GROUP BY Department_Cd
ORDER BY 3

--Q1(b) include only the departments with more than 2 staff
SELECT Department_Cd, AVG(Pay) AS 'Mean Pay', SUM(Pay) AS 'Total Pay', COUNT(Staff_No) AS 'Number of Staff' FROM Staff_Relation
WHERE Type_of_Employment = 'FT'
GROUP BY Department_Cd
HAVING COUNT(Staff_No) > 2
ORDER BY 3

--Q2(a) list mean pay, total pay & no of staff by grade
SELECT Grade, AVG(Pay) AS 'Mean Pay', SUM(Pay) AS 'Total Pay', COUNT(Staff_No) AS 'Number of Staff' FROM Staff_Relation
WHERE Type_of_Employment = 'FT'
GROUP BY Grade
ORDER BY 3

--Q2(b)
SELECT Grade, AVG(Pay) AS 'Mean Pay', SUM(Pay) AS 'Total Pay', COUNT(Staff_No) AS 'Number of Staff' FROM Staff_Relation
WHERE Type_of_Employment = 'FT'
GROUP BY Grade
HAVING COUNT(Staff_No) >2
ORDER BY 3

--Q3 list highest & lowest pay & allowance, group by department code
SELECT Department_Cd, MAX(Pay) AS 'Highest Pay', MIN(Pay) AS 'Lowest Pay', MAX(Allowance) AS 'Highest Allowance', MIN(Allowance) AS 'Lowest Allowance'
FROM Staff_Relation
GROUP BY Department_Cd
ORDER BY Department_Cd

--Q4 Display any staff names that are not unique, if any
SELECT Staff_Name FROM Staff_Relation
WHERE Staff_Name IN (SELECT Staff_Name FROM Staff_Relation GROUP BY Staff_Name HAVING COUNT(*) > 1)


--Q5(a) Show total manpower cost and no of staff of all departments except PO & DPO
SELECT Department_Cd, SUM(ISNULL(Pay, 0) + ISNULL(Allowance, 0)) AS 'Total Manpower Cost', COUNT(Staff_No) AS 'No of Staff'
FROM Staff_Relation
WHERE Department_Cd NOT IN ('PO', 'DPO')
GROUP BY Department_Cd
ORDER BY 2 DESC

--Q5(b) exclude departments with 1 or 2 staff
SELECT Department_Cd, SUM(ISNULL(Pay, 0) + ISNULL(Allowance, 0)) AS 'Total Manpower Cost', COUNT(Staff_No) AS 'No of Staff'
FROM Staff_Relation
WHERE Department_Cd NOT IN ('PO', 'DPO')
GROUP BY Department_Cd
HAVING COUNT(Staff_No) > 2
ORDER BY 2 DESC

--Q5(c) exclude departments with 1 or 2 staff & total manpower cost < $20,000
SELECT Department_Cd, SUM(ISNULL(Pay, 0) + ISNULL(Allowance, 0)) AS 'Total Manpower Cost', COUNT(Staff_No) AS 'No of Staff'
FROM Staff_Relation
WHERE Department_Cd NOT IN ('PO', 'DPO')
GROUP BY Department_Cd
HAVING COUNT(Staff_No) > 2 AND SUM(ISNULL(Pay, 0) + ISNULL(Allowance, 0)) > 20000
ORDER BY 2 DESC

--Q6 lists 1st alpahbet of staff no, number of staff, mean age of staff, grouped by 1st alphabet of staff no
SELECT LEFT(Staff_No, 1) AS 'First Alpahbet', COUNT(*) AS 'Number of Staff', AVG(CAST(DATEDIFF(DD, Date_Of_Birth, GETDATE()) / 365.25 AS INT)) AS 'Mean Age' FROM Staff_Relation
GROUP BY LEFT(Staff_No, 1)
ORDER BY 2 DESC