--Q1 Sort in descending order of average course fee is redundant
SELECT AVG(Crse_Fee) AS 'Mean Course Fee' FROM Course_Relation

--Q2 Results are different as null is completely ignored in mean lab fee, but isn't ignored in the second column
SELECT AVG(Lab_Fee) AS 'Mean Lab Fee', AVG(ISNULL(Lab_Fee, 0)) AS 'Mean Lab Fee - Null treated as zero' FROM Course_Relation

--Q3 Part 1
SELECT Crse_Fee + Lab_Fee AS 'Total Fee (null as it is)', ISNULL(Lab_Fee, 0) + Crse_Fee AS 'Total fee (null as zero)'
FROM Course_Relation
ORDER BY 1

--Q3 Part 2
SELECT AVG(Crse_Fee + Lab_Fee) AS 'Mean total fee (null as it is)', AVG(ISNULL(Lab_Fee, 0) + Crse_Fee) AS 'Mean total fee (null as zero)'
FROM Course_Relation
ORDER BY 1

--Q4 ISNULL Function has no effect on the result
SELECT SUM(Pay) AS 'Total Pay' FROM Staff_Relation

--Q5 Copy the output shown
SELECT SUM(Pay) AS 'Total pay', SUM(Allowance) AS 'Total Allowance', SUM(Pay) + SUM(Allowance) AS 'SUM(Pay)+SUM(Allowance)',
SUM(Pay + Allowance) AS 'SUM(Pay + Allowance)', SUM(ISNULL(Pay, 0) + ISNULL(Allowance, 0))
FROM Staff_Relation

--Q6 Show number of staffs in royal poly
SELECT COUNT(Staff_No) AS 'Number of Staff' FROM Staff_Relation

--Q7 Show courses with lab fee
SELECT COUNT(Lab_Fee) AS 'Courses with Lab Fee' FROM Course_Relation

--Q8 Show highest and lowest pay
SELECT MAX(Pay) AS 'Highest Pay', MIN(Pay) AS 'Lowest Pay' FROM Staff_Relation

--Q9 Show number of staff on hourly pay and number of different hourly pay
SELECT COUNT(Hourly_Rate) AS 'Number of staff on hourly pay', COUNT(DISTINCT Hourly_Rate) AS 'Number of different hourly pay'
FROM Staff_Relation