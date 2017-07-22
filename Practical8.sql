--prac 8
--add foreign key Offered_by into course table
alter table course_relation
add foreign key(offered_by) references department_relation

select * from Department_Relation
select * from Staff_Relation

--add foreign key HOD into department table
alter table department_relation
add foreign key(HOD) references staff_relation

--add foreign key Department_Cd into staff_relation table
alter table staff_relation
add foreign key(Department_Cd) references department_relation