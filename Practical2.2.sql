--create backup for staff relation table(must create backup table first)
INSERT INTO Staff_Relation_Backup SELECT * FROM Staff_Relation

--create backup for staff relation table(no need to create backup table first)
SELECT * INTO Staff_Relation_Backup FROM Staff_Relation

--show staff relation backup table
SELECT * FROM Staff_Relation_Backup

--increase pay value by 5% for staff relation table
UPDATE Staff_Relation SET Pay *= 1.05

--decrease pay by $50 and increase allowance by 10%
UPDATE Staff_Relation SET Pay -= 50, Allowance *= 1.1

--increase pay of male full time staff who joined before 1996 by $100
UPDATE Staff_Relation SET Pay += 100
WHERE Gender='M' AND Join_Yr<1996 AND Type_of_Employment='FT'

--delete row with staff number of T001
DELETE FROM Staff_Relation
WHERE Staff_No='T001'

--delete all data in staff relation table
DELETE FROM Staff_Relation

--restore staff relation table from staff relation backup table
INSERT INTO Staff_Relation SELECT * FROM Staff_Relation_Backup

--show staff relation table
SELECT * FROM Staff_Relation