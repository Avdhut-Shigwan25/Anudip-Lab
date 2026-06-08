/* 

Create Database StudentManagementSystem1
1.Create Table student with attribute  StudentID (Primary Key)
Name
Age
Address

2.Create a table with named Feedback with attributes: 
FeedbackID (Primary Key) 
StudentID (Foreign key) 
Date 
InstructorName mysq
Feedback

(Add 5 Records in table)

*/ 

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| salesdb            |
| sys                |
+--------------------+
5 rows in set (0.08 sec)

mysql> create database studentmanagementsystem1;
Query OK, 1 row affected (0.02 sec)

mysql> use studentmanagementsystem1;
Database changed
mysql> create table student(StudentID varchar(10) not null primary key,Name varchar(30) not null,Age int not null,Address varchar(50) not null);
Query OK, 0 rows affected (0.05 sec)

mysql> desc student;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| StudentID | varchar(10) | NO   | PRI | NULL    |       |
| Name      | varchar(30) | NO   |     | NULL    |       |
| Age       | int         | NO   |     | NULL    |       |
| Address   | varchar(50) | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql> insert into student values('1','Avdhut',21,'Raigad'),('2','Mihir',21,'Satara'),('3','Neha',21,'Mumbai'),('4','Devesh', 20,'Ratnagiri'),('5','Mohan',20,'Nashik');
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from student;
+-----------+--------+-----+-----------+
| StudentID | Name   | Age | Address   |
+-----------+--------+-----+-----------+
| 1         | Avdhut |  21 | Raigad    |
| 2         | Mihir  |  21 | Satara    |
| 3         | Neha   |  21 | Mumbai    |
| 4         | Devesh |  20 | Ratnagiri |
| 5         | Mohan  |  20 | Nashik    |
+-----------+--------+-----+-----------+
5 rows in set (0.00 sec)

mysql>  create table Feedback(FeedbackID varchar(10) not null primary key,StudentID varchar(10) not null,Date datetime not null,InstructorName varchar(30) not null,Feedback varchar(50) not null,foreign key(StudentID) references student(StudentID));
Query OK, 0 rows affected (0.04 sec)

mysql>  insert into Feedback values(1, 01, '2026-06-08', 'Mrs.Rajeshri', 'Good.'),(2, 02, '2026-06-08', 'Mrs.Rajeshri', 'Good.'),(3, 03, '2026-06-08', 'Mrs.Rajeshri', 'EXcellent.'),(4, 04, '2026-06-08', 'Mrs.Rajeshri', 'Average.'),(5, 05, '2026-06-08', 'Mrs.Rajeshri', 'Good.');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from feedback;
+------------+-----------+---------------------+----------------+------------+
| FeedbackID | StudentID | Date                | InstructorName | Feedback   |
+------------+-----------+---------------------+----------------+------------+
| 1          | 1         | 2026-06-08 00:00:00 | Mrs.Rajeshri   | Good.      |
| 2          | 2         | 2026-06-08 00:00:00 | Mrs.Rajeshri   | Good.      |
| 3          | 3         | 2026-06-08 00:00:00 | Mrs.Rajeshri   | EXcellent. |
| 4          | 4         | 2026-06-08 00:00:00 | Mrs.Rajeshri   | Average.   |
| 5          | 5         | 2026-06-08 00:00:00 | Mrs.Rajeshri   | Good.      |
+------------+-----------+---------------------+----------------+------------+
5 rows in set (0.00 sec)

mysql>