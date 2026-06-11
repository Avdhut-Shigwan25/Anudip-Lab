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
14 rows in set (0.01 sec)

mysql> use e_commerce;
Database changed
mysql> show tables;
+----------------------+
| Tables_in_e_commerce |
+----------------------+
| bankaccount          |
| customer             |
| employee             |
| order_details        |
| product              |
| student_info         |
+----------------------+
6 rows in set (0.00 sec)

mysql> select * from employee;
+------------+----------------+----------------+
| employeeID | employeeName   | employeeSalary |
+------------+----------------+----------------+
|          1 | Avdhut Shigwan |          80000 |
|          2 | Yogesh Salve   |          60000 |
|          3 | Neha Chavan    |          60000 |
|          4 | Mihir Latke    |          50000 |
|          5 | Devesh Shinde  |          20000 |
+------------+----------------+----------------+
5 rows in set (0.02 sec)

mysql> alter table employee rename employee_details;
Query OK, 0 rows affected (0.02 sec)

mysql> select * from employee_details;
+------------+----------------+----------------+
| employeeID | employeeName   | employeeSalary |
+------------+----------------+----------------+
|          1 | Avdhut Shigwan |          80000 |
|          2 | Yogesh Salve   |          60000 |
|          3 | Neha Chavan    |          60000 |
|          4 | Mihir Latke    |          50000 |
|          5 | Devesh Shinde  |          20000 |
+------------+----------------+----------------+
5 rows in set (0.00 sec)

mysql> select * from employee_details where employeeSalary >50000;
+------------+----------------+----------------+
| employeeID | employeeName   | employeeSalary |
+------------+----------------+----------------+
|          1 | Avdhut Shigwan |          80000 |
|          2 | Yogesh Salve   |          60000 |
|          3 | Neha Chavan    |          60000 |
+------------+----------------+----------------+
3 rows in set (0.01 sec)

mysql> select * from employee_details order by employeeSalary desc;
+------------+----------------+----------------+
| employeeID | employeeName   | employeeSalary |
+------------+----------------+----------------+
|          1 | Avdhut Shigwan |          80000 |
|          2 | Yogesh Salve   |          60000 |
|          3 | Neha Chavan    |          60000 |
|          4 | Mihir Latke    |          50000 |
|          5 | Devesh Shinde  |          20000 |
+------------+----------------+----------------+
5 rows in set (0.00 sec)

mysql> select * from employee_details order by employeeSalary ;
+------------+----------------+----------------+
| employeeID | employeeName   | employeeSalary |
+------------+----------------+----------------+
|          5 | Devesh Shinde  |          20000 |
|          4 | Mihir Latke    |          50000 |
|          2 | Yogesh Salve   |          60000 |
|          3 | Neha Chavan    |          60000 |
|          1 | Avdhut Shigwan |          80000 |
+------------+----------------+----------------+
5 rows in set (0.00 sec)

mysql> select * from order_details;
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| order_id | customer_id | product_id | quentity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
|      101 | c123        | p102       |       20 |      200000 | gpay         | 2026-06-06 00:00:00 | shipping     |
|      102 | c4          | p102       |       20 |       22000 | phonepy      | 2026-06-04 00:00:00 | shipping     |
|      103 | c5          | p102       |        2 |       54000 | phonepy      | 2026-06-03 00:00:00 | shipping     |
|      104 | c6          | p102       |       25 |       99000 | gpay         | 2026-06-02 00:00:00 | shipping     |
|      105 | c7          | p102       |       18 |       46500 | gpay         | 2026-06-01 00:00:00 | shipping     |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
5 rows in set (0.00 sec)

mysql> create table orders(order_id int primary key, department varchar(50) not null, amount double not null);
Query OK, 0 rows affected (0.06 sec)

mysql> insert into orders values(1,'sales',1000),(2,'sales',1500),(3,'HR',800);
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select * from orders;
+----------+------------+--------+
| order_id | department | amount |
+----------+------------+--------+
|        1 | sales      |   1000 |
|        2 | sales      |   1500 |
|        3 | HR         |    800 |
+----------+------------+--------+
3 rows in set (0.00 sec)

mysql>  select department, sum(amount) as total_amount from orders group by department;
+------------+--------------+
| department | total_amount |
+------------+--------------+
| sales      |         2500 |
| HR         |          800 |
+------------+--------------+
2 rows in set (0.03 sec)

mysql> select department, avg(amount) as total_avg from orders group by department;
+------------+-----------+
| department | total_avg |
+------------+-----------+
| sales      |      1250 |
| HR         |       800 |
+------------+-----------+
2 rows in set (0.02 sec)

mysql> select department, sum(amount) as total_amount from orders group by department having sum(amount) > 1000;
+------------+--------------+
| department | total_amount |
+------------+--------------+
| sales      |         2500 |
+------------+--------------+
1 row in set (0.02 sec)

mysql> select * from employee_details;
+------------+----------------+----------------+
| employeeID | employeeName   | employeeSalary |
+------------+----------------+----------------+
|          1 | Avdhut Shigwan |          80000 |
|          2 | Yogesh Salve   |          60000 |
|          3 | Neha Chavan    |          60000 |
|          4 | Mihir Latke    |          50000 |
|          5 | Devesh Shinde  |          20000 |
+------------+----------------+----------------+
5 rows in set (0.00 sec)

mysql> create table employee_details1(employeeID int not null,name varchar(50) not null,department varchar(60) not null,salary double not null);
Query OK, 0 rows affected (0.04 sec)

mysql> insert into employee_details1 values(01,'devayani ghorpade','HR',5000),(02,'Sakshi Thavre','IT',7000),(03,'Bharti Thande','IT',6000),(04,'neha Chikori','HR',5000),(05,'Pillu Yadav','Finance',4500);
Query OK, 5 rows affected (0.03 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from employee_details1;
+------------+-------------------+------------+--------+
| employeeID | name              | department | salary |
+------------+-------------------+------------+--------+
|          1 | devayani ghorpade | HR         |   5000 |
|          2 | Sakshi Thavre     | IT         |   7000 |
|          3 | Bharti Thande     | IT         |   6000 |
|          4 | neha Chikori      | HR         |   5000 |
|          5 | Pillu Yadav       | Finance    |   4500 |
+------------+-------------------+------------+--------+
5 rows in set (0.00 sec)

mysql> DROP TABLE employee_details1;
Query OK, 0 rows affected (0.03 sec)

mysql> create table employee_details1(employeeID int not null,name varchar(50) not null,department varchar(60) not null,salary double not null);
Query OK, 0 rows affected (0.04 sec)

mysql> insert into employee_details1 values(01,'Jethalal Gada','HR',5000),(02,'Aatmaram Bhide','IT',7000),(03,'Taarak Metha','IT',6000),(04,'Hansraj Hathi','HR',5000),(05,'Popatlal Pande','Finance',4500);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from employee_details1;
+------------+----------------+------------+--------+
| employeeID | name           | department | salary |
+------------+----------------+------------+--------+
|          1 | Jethalal Gada  | HR         |   5000 |
|          2 | Aatmaram Bhide | IT         |   7000 |
|          3 | Taarak Metha   | IT         |   6000 |
|          4 | Hansraj Hathi  | HR         |   5000 |
|          5 | Popatlal Pande | Finance    |   4500 |
+------------+----------------+------------+--------+
5 rows in set (0.00 sec)

mysql> select department, count(*) as total_employee from employee_details1 group by department;
+------------+----------------+
| department | total_employee |
+------------+----------------+
| HR         |              2 |
| IT         |              2 |
| Finance    |              1 |
+------------+----------------+
3 rows in set (0.00 sec)

mysql> select department, sum(salary) as total_salary from employee_details1 group by department;
+------------+--------------+
| department | total_salary |
+------------+--------------+
| HR         |        10000 |
| IT         |        13000 |
| Finance    |         4500 |
+------------+--------------+
3 rows in set (0.00 sec)

mysql> select department, avg(salary) as total_avg from employee_details1 group by department;
+------------+-----------+
| department | total_avg |
+------------+-----------+
| HR         |      5000 |
| IT         |      6500 |
| Finance    |      4500 |
+------------+-----------+
3 rows in set (0.00 sec)

mysql> select department, salary, count(*) from employee_details1 group by department,salary;
+------------+--------+----------+
| department | salary | count(*) |
+------------+--------+----------+
| HR         |   5000 |        2 |
| IT         |   7000 |        1 |
| IT         |   6000 |        1 |
| Finance    |   4500 |        1 |
+------------+--------+----------+
4 rows in set (0.00 sec)

mysql> select * from employee_details1;
+------------+----------------+------------+--------+
| employeeID | name           | department | salary |
+------------+----------------+------------+--------+
|          1 | Jethalal Gada  | HR         |   5000 |
|          2 | Aatmaram Bhide | IT         |   7000 |
|          3 | Taarak Metha   | IT         |   6000 |
|          4 | Hansraj Hathi  | HR         |   5000 |
|          5 | Popatlal Pande | Finance    |   4500 |
+------------+----------------+------------+--------+
5 rows in set (0.00 sec)

mysql>  select department,count(*) as total from employee_details1 group by department having count(*) > 1;
+------------+-------+
| department | total |
+------------+-------+
| HR         |     2 |
| IT         |     2 |
+------------+-------+
2 rows in set (0.00 sec)

mysql> select department,count(*) as total from employee_details1 group by department having count(*) <= 1;
+------------+-------+
| department | total |
+------------+-------+
| Finance    |     1 |
+------------+-------+
1 row in set (0.00 sec)

mysql> select department,count(*) from employee_details1 group by department having count(*) > 1 ;
+------------+----------+
| department | count(*) |
+------------+----------+
| HR         |        2 |
| IT         |        2 |
+------------+----------+
2 rows in set (0.00 sec)

mysql>