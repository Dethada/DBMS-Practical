--insert data for courses without lab fee to course relation table
INSERT INTO Course_Relation(Crse_Cd, Crse_Name, Offered_By, Crse_Fee)
VALUES ('DBA','Diploma in Business Administration','SB',500.00),
('DFI','Diploma in Business Administration','SB',800.00)

--insert data for courses with lab fee to course relation table
INSERT INTO Course_Relation
VALUES ('DBIT','Diploma in Business and Information Technology','DMIT',700.00,100.00),
('DDM','Diploma in Digital Media','DMIT',1000.00,900.00),
('DISM','Diploma in Infocomm Security Management','DMIT',900.00,300.00),
('DIT','Diploma in Information Technology','DMIT',650.00,450.00)

--show course relaion table
SELECT * FROM Course_Relation

--insert data to department relation table
INSERT INTO Department_Relation
VALUES ('DMIT', 'School of Digital Media and Infocomm Technology', 'S001', 82, 92, 90000.00, 45000.00, '2009-04-01'),
('DP0', 'Deputy Principal’s Office', 'T002', 3, 3, 6000.00, NULL, NULL),
('PO', 'Principal’s office', 'T001', 4, 4, 7500.00, NULL, '2008-01-01'),
('SB', 'School of Business', 'S006', 86, 90, 80000.00, 88000.00, '1996-10-01')

--show department relation table
SELECT * FROM Department_Relation