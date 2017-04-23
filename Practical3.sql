--display everything from staff relation table
SELECT * FROM Staff_Relation
SELECT DISTINCT * FROM Staff_Relation

--list citizenship of staff by descending alphabetical order
SELECT Citizenship FROM Staff_Relation
ORDER BY Citizenship DESC

--list citizenship without duplicates
SELECT DISTINCT Citizenship FROM Staff_Relation

--display staff name and date of birth
SELECT Staff_Name AS 'Name of Staff', Date_Of_Birth 'Date-Of-Birth' FROM Staff_Relation
ORDER BY Date_Of_Birth

--display all from departments sorted in descending order of department code
SELECT * FROM Department_Relation
ORDER BY 1 DESC

--display department code and staff name
SELECT Department_Cd, Staff_Name FROM Staff_Relation
ORDER BY Staff_Name DESC

--list department name & hod appointment date
SELECT Dept_Name AS Department_Name, HOD_Appt_Date AS HOD_Appointment_Date FROM Department_Relation

--display all from department relation table sorted by descending order of staff number
SELECT * FROM Department_Relation
ORDER BY 4 DESC

/*
SELECT Department_Relation.Dept_Cd, Staff_Relation.Staff_Name FROM Department_Relation
RIGHT JOIN Staff_Relation ON Department_Relation.Dept_Cd = Staff_Relation.Department_Cd
ORDER BY Dept_Cd DESC
*/