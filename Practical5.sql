--Null lab fee converted to 0. New column fee per sem which is crse fee + lab fee is created
SELECT Crse_Cd, Crse_Name, Crse_Fee, ISNULL(Lab_Fee, 0) + Crse_Fee AS 'Fee Per Semester' FROM Course_Relation
ORDER BY 4

--New column named number understaffed which is max staff strength - no of staff is created
SELECT Dept_Name, Max_Staff_Strength, No_Of_Staff, Max_Staff_Strength - No_Of_Staff AS 'Number Understafffed'
FROM Department_Relation
ORDER BY 4 DESC

--Display staff name with department code in parentheses include only staff_no that start with S
SELECT Staff_Name + ' (' + Department_Cd + ')' FROM Staff_Relation
WHERE Staff_No LIKE 'S%'

--shows the current date and time
SELECT GETDATE() AS 'Current Date and Time' FROM Course_Relation

--shows the number of years the staff has been in service
SELECT Staff_Name, YEAR(GETDATE()) - Join_Yr AS 'Years in Service' FROM Staff_Relation
ORDER BY 2 DESC

--List course code, course name and length of course name of courses with length of course name > 31
SELECT Crse_Cd, Crse_Name, LEN(Crse_Name) AS 'Length of Diploma Name' FROM Course_Relation
WHERE LEN(Crse_Name) > 31
ORDER BY 3

--show course name in upper and lower cases
SELECT Crse_Cd, UPPER(Crse_Name) AS 'Course Name (Upper)', LOWER(Crse_Name) AS 'Course Name (Lower)' FROM Course_Relation
ORDER BY Crse_Cd DESC

--Show that output in the question (Optional Q1)
SELECT TOP 1 Staff_No, Staff_Name, 'No Supervisor' AS Supervisor FROM Staff_Relation
WHERE Staff_No = 'T001'

--Display date in dd-mm-yyyy format
SELECT CONVERT(VARCHAR(10), GETDATE(), 105) FROM Course_Relation