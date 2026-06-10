mysql> show databases;
+--------------------------+
| Database                 |
+--------------------------+
| e_commerce               |
| ecommerce                |
| information_schema       |
| mydb                     |
| mysql                    |
| performance_schema       |
| practicedb               |
| sakila                   |
| student_management       |
| studentmanagementsystem  |
| studentmanagementsystem1 |
| sys                      |
| world                    |
+--------------------------+
13 rows in set (0.00 sec)

mysql> use e_commerce;
Database changed
mysql> create table employee(employeeID int(10) not null primary key, employeeName varchar(40) not null, salary double not null);
Query OK, 0 rows affected, 1 warning (0.08 sec)

mysql> insert into employee values(01,'Avdhut Shigwan',80000),(02,'Yogesh Salve',60000),(03,'Neha Chavan',60000),(04,'Mihir Latke',50000),(05,'Devesh Shinde',20000);
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from employee;
+------------+----------------+--------+
| employeeID | employeeName   | salary |
+------------+----------------+--------+
|          1 | Avdhut Shigwan |  80000 |
|          2 | Yogesh Salve   |  60000 |
|          3 | Neha Chavan    |  60000 |
|          4 | Mihir Latke    |  50000 |
|          5 | Devesh Shinde  |  20000 |
+------------+----------------+--------+
5 rows in set (0.00 sec)

mysql> update employee set salary=10000 where employeeID=5;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from employee;
+------------+----------------+--------+
| employeeID | employeeName   | salary |
+------------+----------------+--------+
|          1 | Avdhut Shigwan |  80000 |
|          2 | Yogesh Salve   |  60000 |
|          3 | Neha Chavan    |  60000 |
|          4 | Mihir Latke    |  50000 |
|          5 | Devesh Shinde  |  10000 |
+------------+----------------+--------+
5 rows in set (0.00 sec)

mysql> update employee set employeeName='Sakshi Jadhav' where employeeID=2;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from employee;
+------------+----------------+--------+
| employeeID | employeeName   | salary |
+------------+----------------+--------+
|          1 | Avdhut Shigwan |  80000 |
|          2 | Sakshi Jadhav  |  60000 |
|          3 | Neha Chavan    |  60000 |
|          4 | Mihir Latke    |  50000 |
|          5 | Devesh Shinde  |  10000 |
+------------+----------------+--------+
5 rows in set (0.00 sec)

mysql> delete from employee where employeeId=5;
Query OK, 1 row affected (0.03 sec)

mysql> select * from employee;
+------------+----------------+--------+
| employeeID | employeeName   | salary |
+------------+----------------+--------+
|          1 | Avdhut Shigwan |  80000 |
|          2 | Sakshi Jadhav  |  60000 |
|          3 | Neha Chavan    |  60000 |
|          4 | Mihir Latke    |  50000 |
+------------+----------------+--------+
4 rows in set (0.00 sec)

mysql> delete from employee;
Query OK, 4 rows affected (0.01 sec)

mysql> select * from employee;
Empty set (0.00 sec)

mysql>  desc employee;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| employeeID   | int         | NO   | PRI | NULL    |       |
| employeeName | varchar(40) | NO   |     | NULL    |       |
| salary       | double      | NO   |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

mysql> insert into employee values(01,'Avdhut Shigwan',80000),(02,'Yogesh Salve',60000),(03,'Neha Chavan',60000),(04,'Mihir Latke',50000),(05,'Devesh Shinde',20000);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from employee;
+------------+----------------+--------+
| employeeID | employeeName   | salary |
+------------+----------------+--------+
|          1 | Avdhut Shigwan |  80000 |
|          2 | Yogesh Salve   |  60000 |
|          3 | Neha Chavan    |  60000 |
|          4 | Mihir Latke    |  50000 |
|          5 | Devesh Shinde  |  20000 |
+------------+----------------+--------+
5 rows in set (0.00 sec)

mysql> truncate table employee;
Query OK, 0 rows affected (0.06 sec)

mysql> select * from employee;
Empty set (0.00 sec)

mysql> desc employee;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| employeeID   | int         | NO   | PRI | NULL    |       |
| employeeName | varchar(40) | NO   |     | NULL    |       |
| salary       | double      | NO   |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> drop table employee;
Query OK, 0 rows affected (0.03 sec)

mysql>  create table employee(employeeID int(10) not null primary key, employeeName varchar(50) not null, salary double not null);
Query OK, 0 rows affected, 1 warning (0.04 sec)

mysql> insert into employee values(01,'Avdhut Shigwan',80000),(02,'Yogesh Salve',60000),(03,'Neha Chavan',60000),(04,'Mihir Latke',50000),(05,'Devesh Shinde',20000);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from employee;
+------------+----------------+--------+
| employeeID | employeeName   | salary |
+------------+----------------+--------+
|          1 | Avdhut Shigwan |  80000 |
|          2 | Yogesh Salve   |  60000 |
|          3 | Neha Chavan    |  60000 |
|          4 | Mihir Latke    |  50000 |
|          5 | Devesh Shinde  |  20000 |
+------------+----------------+--------+
5 rows in set (0.00 sec)

mysql> alter table employee add email varchar(100) not null;
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| employeeID   | int          | NO   | PRI | NULL    |       |
| employeeName | varchar(50)  | NO   |     | NULL    |       |
| salary       | double       | NO   |     | NULL    |       |
| email        | varchar(100) | NO   |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> alter table employee modify employeeName varchar(100) not null;
Query OK, 5 rows affected (0.10 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> desc employee;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| employeeID   | int          | NO   | PRI | NULL    |       |
| employeeName | varchar(100) | NO   |     | NULL    |       |
| salary       | double       | NO   |     | NULL    |       |
| email        | varchar(100) | NO   |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> alter table employee drop column email;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| employeeID   | int          | NO   | PRI | NULL    |       |
| employeeName | varchar(100) | NO   |     | NULL    |       |
| salary       | double       | NO   |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> alter table employee rename column salary to employeeSalary;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| employeeID     | int          | NO   | PRI | NULL    |       |
| employeeName   | varchar(100) | NO   |     | NULL    |       |
| employeeSalary | double       | NO   |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> alter table employee rename to employee_details;
Query OK, 0 rows affected (0.03 sec)

mysql> desc employee_details;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| employeeID     | int          | NO   | PRI | NULL    |       |
| employeeName   | varchar(100) | NO   |     | NULL    |       |
| employeeSalary | double       | NO   |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql>  alter table employee_details drop primary key ;
Query OK, 5 rows affected (0.10 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> desc employee_details;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| employeeID     | int          | NO   |     | NULL    |       |
| employeeName   | varchar(100) | NO   |     | NULL    |       |
| employeeSalary | double       | NO   |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> alter table employee_details add constraint primary key(employeeID);
Query OK, 0 rows affected (0.10 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee_details;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| employeeID     | int          | NO   | PRI | NULL    |       |
| employeeName   | varchar(100) | NO   |     | NULL    |       |
| employeeSalary | double       | NO   |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> show tables;
+----------------------+
| Tables_in_e_commerce |
+----------------------+
| customer             |
| employee_details     |
| order_details        |
| product              |
+----------------------+
4 rows in set (0.01 sec)

mysql>