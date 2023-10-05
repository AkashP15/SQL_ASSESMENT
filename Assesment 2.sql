Create Database School;
use School;

Create Table Student(
Std_Id Int primary key,
Std_Name Varchar(80),
Sex Varchar(30),
Percentage int,
Class Int,
Sec Varchar(10),
Stream Varchar(20),
DOB Varchar(30));


Insert Into Student (Std_Id, Std_Name, Sex, Percentage, Class, Sec, Stream, DOB)
Values
      (1001,'Surekha Joshi','Female',82,12,'A','Science','03/08/1998'),
      (1002,'Maahi Agarwal','Female',56,11,'C','Commerce','11/23/2008'),
      (1003,'Sanam Verma','Male',59,11,'C','Commerce','06/29/2006'),
      (1004,'Ronit Kumar','Male',63,11,'C','Commerce','11/05/1997'),
      (1005,'Dipesh Pulkit','Male',78,11,'B','Science','14/09/2003'),
      (1006,'Jahanvi Puri','Female',60,11,'B','Commerce','11/07/2008'),
      (1007,'Sanam Kumar','Male',23,12,'F','Commerce','03/08/1998'),
      (1008,'Sahil Saras','Male',56,11,'C','Commerce','11/07/2008'),
      (1009,'Akshara Agarwal','Female',72,12,'B','Commerce','10/01/1996'),
      (1010,'Stuti Mishra','Female',39,11,'F','Science','11/23/2008'),
      (1011,'Harsh Agarwal','Male',42,11,'C','Science','03/08/1998'),
      (1012,'Nikunj Agarwal','Male',49,12,'C','Commerce','28/06/1998'),
      (1013,'Akriti Saxsena','Female',89,12,'A','Science','11/23/2008'),
      (1014,'Tani Rastogi','Female',82,12,'A','Science','11/23/2008');
      
	Select * From Student;
    
    -- QUery:-
    
--     1 To display all the records form STUDENT table. SELECT * FROM student ;

Select * From Student;

-- 2. To display any name and date of birth from the table STUDENT. SELECT StdName, DOB 
-- FROM student ; 

Select Std_name, DOB From Student;

-- 3. To display all students record where percentage is greater of equal to 80 FROM student table. 
-- SELECT * FROM student WHERE percentage >= 80; 

Select * From Student Where Percentage >= 80; 

-- 4. To display student name, stream and percentage where percentage of student is more than 80 
-- SELECT StdName, Stream, Percentage WHERE percentage > 80;

Select Std_Name, Stream, Percentage From Student where Percentage > 80;

-- 5. To display all records of science students whose percentage is more than 75 form student table. 
-- SELECT * FORM student WHERE stream = ‘Science’ AND percentage > 75;

Select * From Student Where Stream = 'Science' And Percentage > 75;
      