# Question 1

create database worker;
use worker;
create table worker_details (worker_id int,first_name varchar(50),last_name varchar(50),salary int,joining_date date,department varchar(20));
insert into worker_details (worker_id,first_name,last_name,salary,joining_date,department)
values ('1', 'Monika', 'Arora', '100000','2014-2-20','HR'),
('2', 'Niharika', 'Verma', '80000', '2014-6-11','Admin'),
('3', 'Vishal', 'Singhal', '300000', '2014-2-20','HR'),
('4', 'Amitabh', 'Singh', '500000', '2014-2-20','Admin'),
('5', 'Vivek', 'Bhati', '500000', '2014-6-11','Admin'),
('6', 'Vipul', 'Diwan', '200000', '2014-6-11','Account'),
('7', 'Satish', 'Kumar', '75000', '2014-1-20','Account'),
('8', 'Geetika', 'Chauhan', '90000', '2014-4-11','Admin');

1. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME 
Ascending and DEPARTMENT Descending.
select *
from worker_details
order by first_name asc;
select *
from worker_details
order by department desc;

2.Write an SQL query to print details for Workers with the first names “Vipul” and “Satish” 
from the Worker table. 
select *
from worker_details
where first_name = 'vipul' or first_name = 'satish';

3. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and 
contains six alphabets.
select *
from worker_details
where first_name like "_____h";

4. Write an SQL query to print details of the Workers whose SALARY lies between 1. 


5. Write an SQL query to fetch duplicate records having matching data in some fields of a table. 


6. Write an SQL query to show the top 6 records of a table. 

select * 
from worker_details
order by worker_id
limit 6;

7. Write an SQL query to fetch the departments that have less than five people in them. 

select department, count(worker_id)
from worker_details
group by department
having count(worker_id) < 5;

8. Write an SQL query to show all departments along with the number of people in there. 

select department,count(worker_id) as count
from worker_details
group by department;

9. Write an SQL query to print the name of employees having the highest salary in each 
department.

select department, max(salary) as highest salary
from worker_details
group by department;

# Question 2

create database school;
use school;
create table student (StdID int,StdName varchar(30),Sex varchar(10),Percentage int,Class int,Sec varchar(5),Stream varchar(10),DOB date);
insert into student (StdId,StdName,Sex,Percentage,Class,Sec,Stream,DOB)
values ('1001','Surekha Joshi','Female','82','12','A','Science','1998-3-8'),
('1002','MAAHI AGARWAL','Female','56','11','C','Commerce','2008-11-23'),
('1003','Sanam Verma','Male','59','11','C','Commerce','2006-6-29'),
('1004','Ronit Kumar','Male','63','11','C','Commerce','1997-11-5'),
('1005','Dipesh Pulkit','Male','78','11','B','Science','2003-9-14'),
('1006','JAHANVI Puri','Female','60','11','B','Commerce','2008-7-11'),
('1007','Sanam Kumar','Male','23','12','F','Commerce','1998-8-3'),
('1008','SAHIL SARAS','Male','56','11','C','Commerce','2008-11-7'),
('1009','AKSHRA AGARWAL','Female','72','12','B','Commerce','1996-1-10'),
('1010','STUTI MISHRA','Female','39','11','F','Science','2008-11-23'),
('1011','HARSH AGARWAL','Male','42','11','C','Science','1998-3-8'),
('1012','NIKUNJ AGARWAL','Male','49','12','C','Commerce','1998-6-28'),
('1013','AKRITI SAXENA','Female','89','12','A','Science','2008-11-23'),
('1014','TANI RASTOGI','Female','82','12','A','Science','208-11-23');

1. To display all the records form STUDENT table.

select * from student;

2. To display any name and date of birth from the table STUDENT.

select stdname,dob
from student;

3. To display all students record where percentage is greater of equal to 80 FROM student table.
 
select *
from student
where percentage >=80;

4. To display student name, stream and percentage where percentage of student is more than 80.

select stdname,stream,percentage
from student
where percentage > 80;

5. To display all records of science students whose percentage is more than 75 form student table. 

select *
from student
where stream = 'science' and percentage > 75;