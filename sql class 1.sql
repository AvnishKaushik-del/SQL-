#How to create database using  (DDL statement) create,Alter,drop,truncate
create database MySQL_DBA ;

use MySQL_DBA;

#How create table inside database
create table stu_details
(
S_id int primary key,
S_name char(12),
S_program varchar(45)
);

#how to alter table
Alter table Stu_details
add S_city char(33);

#How to drop the column from table
Alter table Stu_details
Drop column S_city;

#How ro use DML statements in SQL(Insert,Update,delete)
#This is a first way to insert the value in a table

insert into Stu_details values(1,'avi','DS')

select * from stu_details;


