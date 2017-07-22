-- Q1
select sp.adm_no, s.Stud_name, mark, grade from stud_mod_performance_relation sp, student_relation s
where sp.adm_no = s.Adm_no and mod_registered = 'DBMS' and mark > (select AVG(mark) from stud_mod_performance_relation)

-- Q2
select Citizenship, Staff_Name from Staff_Relation
where Citizenship in (select country_name from country_relation where language = 'English')
order by Citizenship

-- Q3
select dr.* from Department_Relation dr, Staff_Relation sr
where dr.HOD = sr.Staff_No and Gender = 'F'

-- Q4
select Mod_Name from Module_Relation
where Mod_Cd in (select Mod_Cd from Pre_Requisite_Relation)

-- Optional Q1
select * from Staff_Relation
where department_cd in (select dr.Dept_Cd from Department_Relation dr, Staff_Relation sr
where dr.HOD = sr.Staff_No and Gender = 'F')

-- Optional Q2
select count(*) 'Number of staff whose pay exceed $5000', dr.Dept_Name from Staff_Relation sr, Department_Relation dr
where sr.Department_Cd = dr.Dept_Cd and pay > 5000 and 
Department_Cd in (select Dept_Cd from Department_Relation dr, Staff_Relation sr
where dr.Dept_Cd = sr.Department_Cd and Type_of_Employment = 'FT'
group by dr.Dept_Cd
having count(*) > 5)
group by dr.Dept_Name