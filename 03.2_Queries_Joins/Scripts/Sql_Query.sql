create database employeeDatabase

use employeedatabase

CREATE TABLE employee(empid INT PRIMARY KEY, empfname VARCHAR(20),
					  emplname VARCHAR(20), empAge INT)

CREATE TABLE dept(deptID INT PRIMARY KEY, deptname varchar(20))

--Adding column
ALTER TABLE employee ADD salary BIGINT
ALTER TABLE employee ADD cratedBY INT
ALTER TABLE employee ADD createdOn DATETIME


ALTER TABLE dept ADD cratedBY INT
ALTER TABLE dept ADD createdOn DATETIME


--Mapping employee and deptID
CREATE TABLE emp_dept_mapping(empid INT  REFERENCES employee(empid),
							  deptid INT REFERENCES	dept(deptid))

--Modifying emp_dept table
ALTER TABLE employee ADD cratedBY INT
ALTER TABLE employee ADD createdOn DATETIME

--Add Data in Rows
SELECT * FROM employee
INSERT INTO employee VALUES(1001,'saurabh','saxena',32,65000,1001,GETDATE())
INSERT INTO employee VALUES(1002,'amrita','nevrekar',28,25000,1002,GETDATE())
INSERT INTO employee VALUES(1003,'Muthu','Pandian',26,100,1001,GETDATE())
INSERT INTO employee VALUES(1004,'Vedantha','TV',22,32000,1001,GETDATE())
INSERT INTO employee VALUES(1005,'Kushobo','Saxena',18,300,1001,GETDATE())

SELECT * FROM dept
INSERT INTO dept VALUES(500,'PTDEA',1001,GETDATE())
INSERT INTO dept VALUES(501,'HEALTHCARE',1001,GETDATE())
INSERT INTO dept VALUES(502,'MED',1001,GETDATE())
INSERT INTO dept VALUES(503,'INDUSTRY',1001,GETDATE())


--Library TABLES
CREATE TABLE library (bookid INT, bookname VARCHAR(20),
					  author VARCHAR(20), category VARCHAR(20))

--primary key manipulation
ALTER TABLE library ALTER COLUMN bookid INT NOT NULL
ALTER TABLE library ADD PRIMARY KEY(bookid)

ALTER TABLE library ADD  UNIQUE(bookid)

--mapping book and emp
CREATE TABLE emp_lib(empid INT,bookid INT)

ALTER TABLE emp_lib ADD FOREIGN KEY (empid) REFERENCES employee(empid)
ALTER TABLE emp_lib ADD FOREIGN KEY (bookid) REFERENCES library(bookid)

USE employeedatabase
SELECT * FROM library
INSERT INTO library VALUES(222,'CLR via C#','Jeff','C#'	)
INSERT INTO library VALUES(223,'Advance C++','Jeff','C++')
INSERT INTO library VALUES(224,'SQL','Matt','SQL')
INSERT INTO library VALUES(225,'BASICS','Petric','C#')

--INSERTION 
SELECT * FROM employee
SELECT * FROM dept
SELECT * FROM emp_dept_mapping
INSERT INTO emp_dept_mapping VALUES(1001,500)
INSERT INTO emp_dept_mapping VALUES(1001,501)
INSERT INTO emp_dept_mapping VALUES(1002,502)
INSERT INTO emp_dept_mapping VALUES(1003,503)

--INSERTION
SELECT * FROM library
SELECT * FROM emp_lib_mapping

--RENAME TABLE NAME
SP_RENAME emp_lib,emp_lib_mapping


--INSERT INTO emp_lib_mapping
SELECT * FROM emp_lib_mapping
INSERT INTO emp_lib_mapping VALUES(1001,222)
INSERT INTO emp_lib_mapping VALUES(1002,223)
INSERT INTO emp_lib_mapping VALUES(1002,223)
INSERT INTO emp_lib_mapping VALUES(1001,224)
INSERT INTO emp_lib_mapping VALUES(1003,225)

--FINAL SELCTION
SELECT * FROM employee ORDER BY empfname DESC
SELECT * FROM dept ORDER BY deptname --BY Default ASC
SELECT * FROM emp_dept_mapping

SELECT * FROM library
SELECT * FROM emp_lib_mapping

--JOIN
SELECT e.empfname, e.emplname,d.deptname FROM employee e, dept d, emp_dept_mapping ed 
WHERE e.empid= ed.empid AND d.deptid =ed.deptid

--Multi level join
SELECT e.empfname,e.emplname,d.deptname FROM employee e JOIN( dept d JOIN
emp_dept_mapping ed ON ed.deptid =d.deptid ) ON e.empid=ed.empid

--Inner JOIN
SELECT e.empfname,e.emplname,d.deptname FROM employee e INNER JOIN( dept d INNER JOIN
emp_dept_mapping ed ON ed.deptid =d.deptid ) ON e.empid=ed.empid

--CROSS JOIN
SELECT * FROM employee,dept   ORDER BY empid
SELECT * FROM employee CROSS JOIN dept 

--INNER JOIN 
SELECT e.empfname, ed.deptid FROM employee e INNER JOIN emp_dept_mapping ed
ON e.empid = ed.empid

--LEFT OUTER JOIN
SELECT e.empfname, ed.deptid FROM employee e LEFT OUTER JOIN emp_dept_mapping ed
ON e.empid = ed.empid
	
--Right OUTER JOIN
SELECT e.empfname, ed.deptid FROM employee e RIGHT OUTER JOIN emp_dept_mapping ed
ON e.empid = ed.empid

--FULL OUTER JOIN
SELECT e.empfname, ed.deptid FROM employee e FULL JOIN emp_dept_mapping ed
ON e.empid = ed.empid

SELECT e.empfname, ed.deptid FROM employee e FULL OUTER JOIN emp_dept_mapping ed
ON e.empid = ed.empid