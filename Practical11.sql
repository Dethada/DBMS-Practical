-- Q1(a)
create view DMIT_Staff as
select Staff_Name, isnull(Pay, 0) 'Salary' from Staff_Relation
where Department_Cd = 'DMIT'

-- Q1(b)
drop view DMIT_Staff

-- Q1(c)
create view DMIT_Staff as
select Staff_Name, isnull(Pay, 0) 'Salary', Type_of_Employment, Designation from Staff_Relation
where Department_Cd = 'DMIT'

-- Q2(a)
create view Wife as
select sr.Staff_Name, Dependent_Name 'Wife' from Staff_Dependent_Relation sdr, Staff_Relation sr
where sdr.Staff_No = sr.Staff_No and Relationshipp = 'Wife'

-- Q2(b)
drop view Wife