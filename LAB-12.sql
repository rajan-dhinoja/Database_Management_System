CREATE TABLE STUDENT1(
	RNO INT,
	NAME VARCHAR(50),
	BRANCH VARCHAR(50)
)

INSERT INTO STUDENT1 VALUES
(101,'RAJU','CE'),
(102,'AMIT','CE'),
(103,'SANJAY','ME'),
(104,'NEHA','EC'),
(105,'MEERA','EE'),
(106,'MAHESH','ME')

CREATE TABLE RESULT(
	RNO INT,
	SPI DECIMAL(4,2)
)

INSERT INTO RESULT VALUES
(101,8.8),
(102,9.2),
(103,7.6),
(104,8.2),
(105,7.0),
(107,8.9)

--1
CREATE PROCEDURE GetStudentDetail
AS
BEGIN
SELECT
STUDENT1.Rno,
Student1.Name,
Student1.Branch,
RESULT.SPI
FROM STUDENT1 LEFT OUTER JOIN Result
ON StudenT1.Rno = Result.Rno
END

--2
CREATE PROCEDURE GetStudentDetailByRollNo
@Rno int
AS
BEGIN
SELECT * FROM Student1
WHERE Rno=@Rno
END

--3
CREATE PROCEDURE StudentInsert
@Rno int,
@Name varchar(50),
@Branch varchar(50)
AS
BEGIN
INSERT INTO Student1
(Rno,Name,Branch)
VALUES
(@Rno, @Name, @Branch)
END

--4
CREATE PROCEDURE UpdateStudentBranchById
@Rno int,
@Branch varchar(50)
AS
BEGIN
UPDATE STUDENT1 SET BRANCH=@Branch
WHERE RNO=@Rno
END

--5
CREATE PROCEDURE SpDeleteStudentByRollNo
@Rno int
AS
BEGIN
DELETE FROM STUDENT1
WHERE RNO=@Rno
END