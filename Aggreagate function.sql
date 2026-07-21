use MySQL_DBA;

#How to use check constraints
create table Employee_Information
(
E_id int primary key,
E_name char(12),
E_salary float,
E_age int check(E_age>=18)
);

#this is a first way to insert the values
Insert into Employee_Information
Values
(1,'Avi',2000,25);

#this is a seconcd way to insert the values in a table
Insert into  Employee_Information value(2,'Manu',10000,25);

#this is a third way to insert the values in a table
insert into Employee_Information (E_id,E_name)
values(5 ,'Yash'),
(6,'Ankit');

#How to update the value in table
update Employee_Information set E_name='Vansh'
where E_id=1;

update Employee_Information set E_name='Arjun',E_salary=87000
where E_id=5;

#How to delete the data from table
#if you want to delete the trable all the records from the table
delete from Employee_Information;

#If you want to delete the single records from table
Delete from Employee_Information
where E_id=1;

#how to truncate the table 
Truncate table Employee_Information;

#How to drop the table 
Drop table Employee_Information;


#How to use order by cluase
#1-Asc
#2-desc
select* from Employee_Information
order by E_name asc;

select* from Employee_Information
order by E_name desc;

#how to do the string concatenation
select 'Python'  ' And '  'SQL' as 'Program name';

#Aggregate Function in Mysql
#Aggregate Function always summarize the values column wise
#there are five types
#1.sum 2.Max() 3.Min() 4.Avg() 5.Count()
select * from Employee_Information;  

select SUM(e_salary) as 'Total Salary'
from Employee_Information;

select MAX(e_salary) as 'Max_Salary'
from Employee_Information;

select MIN(e_salary) as 'Min_Salary'
from Employee_Information;

select AVG(e_salary) as 'Avg_Salary'
from Employee_Information;

select COUNT(E_Salary) as 'Number of Emp'
from Employee_Information;

select sum(e_salary) as 'Total Salary',
MIN(e_salary) as 'MINIMUM Salary',
MAX(e_salary) as 'MAXIMUM Salary',
AVG(e_salary) as 'Average Salary',
COUNT(e_salary) as 'NUMBER of Salary' from Employee_information;
#------------------------------------------------------------------------------#
#If you want to see all records from
select*from  Employee_information;

#If you see the selected column from table
select E_id,E_name
from  Employee_information;

#How to uses where clause
select* from  Employee_information
where E_id=1;