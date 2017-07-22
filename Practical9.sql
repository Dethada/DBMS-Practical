--Q1
select Dept_Name, Staff_Name AS 'Director/Deputy Director' from Staff_Relation S, Department_Relation D
where S.Department_Cd = D.Dept_Cd and (Designation = 'Director' or Designation = 'Deputy Director')
order by Dept_Name

--Q2
select Dept_Name, Crse_Name, Crse_Fee + isnull(Lab_Fee, 0) AS 'Total Course Fee' from Department_Relation D, Course_Relation C
where D.Dept_Cd = C.Offered_By
order by Dept_Name, [Total Course Fee] desc

--Q3
select M.Mod_Name as 'Module Name', M2.Mod_Name AS 'Pre-requisite Module' from Module_Relation M, Pre_Requisite_Relation P, Module_Relation M2
where P.Mod_Cd = M.Mod_Cd and P.Pre_Requisite = M2.Mod_Cd
order by [Module Name], [Pre-requisite Module]

--Q4
select Dept_Name, Crse_Name, Stud_name, CAST(DATEDIFF(DD, DOB, GETDATE()) / 365.25 AS INT) AS 'Age' 
from student_relation S, Course_Relation C, Department_Relation D
where S.crse_cd = C.Crse_Cd and C.Offered_By = D.Dept_Cd
order by Dept_Name, Crse_Name, [Age] desc

--Q5
select s1.Staff_Name, s2.Staff_Name from Staff_Relation S1, Staff_Relation S2
where S1.Supervisor = s2.Staff_No

--Q6
select Dept_Name, COUNT(*) AS 'Number of Staff' from Department_Relation D, Staff_Relation S
where S.Department_Cd = D.Dept_Cd
group by Dept_Name
order by [Number of Staff] desc