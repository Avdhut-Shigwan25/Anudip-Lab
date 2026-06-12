mysql> show databases;
+--------------------------+
| Database                 |
+--------------------------+
| e_commerce               |
| ecommerce                |
| information_schema       |
| joins                    |
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
14 rows in set (0.05 sec)

mysql> use e_commerce;
Database changed
mysql> show tables;
+----------------------+
| Tables_in_e_commerce |
+----------------------+
| bankaccount          |
| customer             |
| employee_details     |
| employee_details1    |
| order_details        |
| orders               |
| product              |
| student_info         |
+----------------------+
8 rows in set (0.01 sec)

mysql> create database joins1;
Query OK, 1 row affected (0.03 sec)

mysql> use joins1;
Database changed
Query OK, 0 rows affected (0.06 sec)

mysql> insert into department values(01,'IT'), (02,'CS'),(03,'Chemical'),(04,'Electric'),(05,'Finance');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from department;
+---------------+-----------------+
| department_id | department_name |
+---------------+-----------------+
|             1 | IT              |
|             2 | CS              |
|             3 | Chemical        |
|             4 | Electric        |
|             5 | Finance         |
+---------------+-----------------+
5 rows in set (0.00 sec)

mysql> create table employee ( employee_id int not null primary key, employee_name varchar(30) not null , department_id int ,foreign key(department_id) references department(department_id));
Query OK, 0 rows affected (0.06 sec)

mysql> desc employee;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| employee_id   | int         | NO   | PRI | NULL    |       |
| employee_name | varchar(30) | NO   |     | NULL    |       |
| department_id | int         | YES  | MUL | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

mysql> insert into employee values(01,'Avdhut',01), (02,'Mihir',02),(03,'Chetan',03),(04,'Jobin',04),(05,'Pratik',05);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from employee;
+-------------+---------------+---------------+
| employee_id | employee_name | department_id |
+-------------+---------------+---------------+
|           1 | Avdhut        |             1 |
|           2 | Mihir         |             2 |
|           3 | Chetan        |             3 |
|           4 | Jobin         |             4 |
|           5 | Pratik        |             5 |
+-------------+---------------+---------------+
5 rows in set (0.00 sec)

mysql> select * from department;
+---------------+-----------------+
| department_id | department_name |
+---------------+-----------------+
|             1 | IT              |
|             2 | CS              |
|             3 | Chemical        |
|             4 | Electric        |
|             5 | Finance         |
+---------------+-----------------+
5 rows in set (0.00 sec)

mysql> select employee_name , department_name from employee inner join department on employee.department_id=department.department_id
    -> ;
+---------------+-----------------+
| employee_name | department_name |
+---------------+-----------------+
| Avdhut        | IT              |
| Mihir         | CS              |
| Chetan        | Chemical        |
| Jobin         | Electric        |
| Pratik        | Finance         |
+---------------+-----------------+
5 rows in set (0.00 sec)

mysql> select employee_name , department_name from employee left join department on employee.department_id=department.department_id;
+---------------+-----------------+
| employee_name | department_name |
+---------------+-----------------+
| Avdhut        | IT              |
| Mihir         | CS              |
| Chetan        | Chemical        |
| Jobin         | Electric        |
| Pratik        | Finance         |
+---------------+-----------------+
5 rows in set (0.00 sec)

mysql> select * from employee;
+-------------+---------------+---------------+
| employee_id | employee_name | department_id |
+-------------+---------------+---------------+
|           1 | Avdhut        |             1 |
|           2 | Mihir         |             2 |
|           3 | Chetan        |             3 |
|           4 | Jobin         |             4 |
|           5 | Pratik        |             5 |
+-------------+---------------+---------------+
5 rows in set (0.00 sec)

mysql> select * from department;
+---------------+-----------------+
| department_id | department_name |
+---------------+-----------------+
|             1 | IT              |
|             2 | CS              |
|             3 | Chemical        |
|             4 | Electric        |
|             5 | Finance         |
+---------------+-----------------+
5 rows in set (0.00 sec)

mysql> select employee_name , department_name from employee cross join department;
+---------------+-----------------+
| employee_name | department_name |
+---------------+-----------------+
| Pratik        | IT              |
| Jobin         | IT              |
| Chetan        | IT              |
| Mihir         | IT              |
| Avdhut        | IT              |
| Pratik        | CS              |
| Jobin         | CS              |
| Chetan        | CS              |
| Mihir         | CS              |
| Avdhut        | CS              |
| Pratik        | Chemical        |
| Jobin         | Chemical        |
| Chetan        | Chemical        |
| Mihir         | Chemical        |
| Avdhut        | Chemical        |
| Pratik        | Electric        |
| Jobin         | Electric        |
| Chetan        | Electric        |
| Mihir         | Electric        |
| Avdhut        | Electric        |
| Pratik        | Finance         |
| Jobin         | Finance         |
| Chetan        | Finance         |
| Mihir         | Finance         |
| Avdhut        | Finance         |
+---------------+-----------------+
25 rows in set (0.00 sec)

mysql>