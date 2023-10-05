CREATE DATABASE ASSESMENT;
USE ASSESMENT;

CREATE TABLE WORKER(
  WORKER_ID INT PRIMARY KEY,
  FIRST_NAME VARCHAR(50),
  LAST_NAME VARCHAR(50),
  SALARY INT,
  JOINING_DATE VARCHAR(20),
  DEPARTMENT VARCHAR(25));
  
  INSERT INTO WORKER (WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT)
  VALUES
        (1,'Monika','Arora',100000,'2/20/2014 9:00','HR'),
        (2,'Nihanika','Verma',80000,'6/11/2014 9:00','Admin'),
        (3,'Vishal','Singhal',300000,'2/20/2014 9:00','HR'),
        (4,'Amitabh','Singh',500000,'2/20/2014 9:00','Admin'),
        (5,'Vivek','Bhati',500000,'6/11/2014 9:00','Admin'),
        (6,'Vipul','Diwan',200000,'6/11/2014 9:00','Account'),
        (7,'Satish','Kumar',75000,'1/20/2014 9:00','Account'),
        (8,'Geetika','Chauhan',90000,'4/11/2014 9:00','Admin');

Select * From Worker;


-- 1. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME 
-- Ascending and DEPARTMENT Descending. 

Select * From Worker Order By First_Name ASC, Department DESC;

-- 2.Write an SQL query to print details for Workers with the first names “Vipul” and “Satish” 
-- from the Worker table.

Select * From Worker Where First_Name In ('Vipul','Satish');

-- 3. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and 
-- contains six alphabets.

Select * From Worker Where Length(First_Name) = 6 And Right(First_Name,1) = 'h';

-- 4. Write an SQL query to print details of the Workers whose SALARY lies between 80K And 1lkh. 

Select * From Worker Where Salary Between 80000 And 100000;

-- 5. Write an SQL query to fetch duplicate records having matching data in some fields of a table. 

Select * From Worker;
Select Worker_id, First_name, Last_name, count(*) as duplicates from Worker group by Worker_id, First_name, Last_name having count(*)>1;

-- 6. Write an SQL query to show the top 6 records of a table. 

Select * From Worker Order by Salary Desc Limit 6; 

-- 7. Write an SQL query to fetch the departments that have less than five people in them.

Select department, count(*) as People From Worker Group by department Having count(*) < 5;

-- 8. Write an SQL query to show all departments along with the number of people in there. 

Select department, count(*) as number_of_people From Worker group by department;

-- 9. Write an SQL query to print the name of employees having the highest salary in each 
-- department. 

Select Department, max(salary) From Worker Group by Department;

  