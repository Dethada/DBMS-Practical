--create course relation table
CREATE TABLE Course_Relation
(Crse_Cd VarChar(5) NOT NULL,
Crse_Name VarChar(100) NOT NULL,
Offered_By VarChar(5) NOT NULL,
Crse_Fee DECIMAL(7,2) NOT NULL,
Lab_Fee DECIMAL(7,2) NULL,
PRIMARY KEY(Crse_Cd)
)

--show course relation table
SELECT * FROM Course_Relation

--create staff relation table
CREATE TABLE Staff_Relation
(Staff_No Char(4) NOT NULL,
Staff_Name VarChar(100) NOT NULL,
Supervisor Char(4) NULL,
Date_Of_Birth DATE NOT NULL,
Grade VarChar(5) NOT NULL,
Marital_Status Char(1) NOT NULL,
Pay DECIMAL(7,2) NULL,
Allowance DECIMAL(7,2) NULL,
Hourly_Rate DECIMAL(7,2) NULL,
Gender Char(1) NOT NULL,
Citizenship VarChar(10) NOT NULL,
Join_Yr INTEGER NOT NULL,
Department_Cd VarChar(5) NOT NULL,
Type_of_Employment Char(2) NOT NULL,
Highest_Qln VarChar(10) NOT NULL,
Designation VarChar(20) NOT NULL,
PRIMARY KEY(Staff_No)
)

--show staff relation table
SELECT * FROM Staff_Relation

--create department relation table
CREATE TABLE Department_Relation
(Dept_Cd VarChar(5) NOT NULL,
Dept_Name VarChar(100) NOT NULL,
HOD Char(4) NOT NULL,
No_Of_Staff INTEGER NULL,
Max_Staff_Strength INTEGER NULL,
Budget DECIMAL(9,2) NULL,
Expenditure DECIMAL(9,2) NULL,
HOD_Appt_Date DATE NULL,
PRIMARY KEY(Dept_Cd)
)