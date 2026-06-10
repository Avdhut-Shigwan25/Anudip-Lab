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
13 rows in set (0.05 sec)

mysql> use e_commerce;
Database changed
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
5 rows in set (0.01 sec)

mysql> select * from employee_details limit 3;
+------------+----------------+----------------+
| employeeID | employeeName   | employeeSalary |
+------------+----------------+----------------+
|          1 | Avdhut Shigwan |          80000 |
|          2 | Yogesh Salve   |          60000 |
|          3 | Neha Chavan    |          60000 |
+------------+----------------+----------------+
3 rows in set (0.00 sec)

mysql> select * from employee_details limit 2;
+------------+----------------+----------------+
| employeeID | employeeName   | employeeSalary |
+------------+----------------+----------------+
|          1 | Avdhut Shigwan |          80000 |
|          2 | Yogesh Salve   |          60000 |
+------------+----------------+----------------+
2 rows in set (0.00 sec)

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

mysql>  select * from employee_details order by employeeName ;
+------------+----------------+----------------+
| employeeID | employeeName   | employeeSalary |
+------------+----------------+----------------+
|          1 | Avdhut Shigwan |          80000 |
|          5 | Devesh Shinde  |          20000 |
|          4 | Mihir Latke    |          50000 |
|          3 | Neha Chavan    |          60000 |
|          2 | Yogesh Salve   |          60000 |
+------------+----------------+----------------+
5 rows in set (0.02 sec)

mysql> select * from employee_details order by employeeName desc;
+------------+----------------+----------------+
| employeeID | employeeName   | employeeSalary |
+------------+----------------+----------------+
|          2 | Yogesh Salve   |          60000 |
|          3 | Neha Chavan    |          60000 |
|          4 | Mihir Latke    |          50000 |
|          5 | Devesh Shinde  |          20000 |
|          1 | Avdhut Shigwan |          80000 |
+------------+----------------+----------------+
5 rows in set (0.00 sec)

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

mysql> select * from employee_details order by employeeSalary desc limit 2;
+------------+----------------+----------------+
| employeeID | employeeName   | employeeSalary |
+------------+----------------+----------------+
|          1 | Avdhut Shigwan |          80000 |
|          2 | Yogesh Salve   |          60000 |
+------------+----------------+----------------+
2 rows in set (0.00 sec)

mysql> select * from customer;
+-------------+--------+----------+------------------+------------+---------+----------+
| customer_id | name   | city     | email            | phone_no   | address | pin_code |
+-------------+--------+----------+------------------+------------+---------+----------+
| C123        | Avdhut | Rasayani | avdh@gmail.com   | 1234567899 | ABC     |     1234 |
| C4          | Mihir  | Rasayani | mihir@gmail.com  | 1234567899 | DEF     |        5 |
| C5          | Neha   | Panvel   | neha@gmail.com   | 1234567899 | GHI     |        8 |
| C6          | Devesh | Panvel   | devesh@gmail.com | 1234567899 | JKL     |        7 |
| C7          | Linkan | Thane    | linkan@gmail.com | 1234567899 | MNO     |        9 |
+-------------+--------+----------+------------------+------------+---------+----------+
5 rows in set (0.06 sec)

mysql> select distinct city from customer;
+----------+
| city     |
+----------+
| Rasayani |
| Panvel   |
| Thane    |
+----------+
3 rows in set (0.01 sec)

mysql> select city from customer;
+----------+
| city     |
+----------+
| Rasayani |
| Rasayani |
| Panvel   |
| Panvel   |
| Thane    |
+----------+
5 rows in set (0.00 sec)

mysql> select * from customer;
+-------------+--------+----------+------------------+------------+---------+----------+
| customer_id | name   | city     | email            | phone_no   | address | pin_code |
+-------------+--------+----------+------------------+------------+---------+----------+
| C123        | Avdhut | Rasayani | avdh@gmail.com   | 1234567899 | ABC     |     1234 |
| C4          | Mihir  | Rasayani | mihir@gmail.com  | 1234567899 | DEF     |        5 |
| C5          | Neha   | Panvel   | neha@gmail.com   | 1234567899 | GHI     |        8 |
| C6          | Devesh | Panvel   | devesh@gmail.com | 1234567899 | JKL     |        7 |
| C7          | Linkan | Thane    | linkan@gmail.com | 1234567899 | MNO     |        9 |
+-------------+--------+----------+------------------+------------+---------+----------+
5 rows in set (0.00 sec)

mysql> select * from customer where customer_id between 'C1' and 'C4';
+-------------+--------+----------+-----------------+------------+---------+----------+
| customer_id | name   | city     | email           | phone_no   | address | pin_code |
+-------------+--------+----------+-----------------+------------+---------+----------+
| C123        | Avdhut | Rasayani | avdh@gmail.com  | 1234567899 | ABC     |     1234 |
| C4          | Mihir  | Rasayani | mihir@gmail.com | 1234567899 | DEF     |        5 |
+-------------+--------+----------+-----------------+------------+---------+----------+
2 rows in set (0.00 sec)

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
5 rows in set (0.02 sec)


mysql> select * from order_details where order_date between '2026-06-06' and '2026-06-06';
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| order_id | customer_id | product_id | quentity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
|      101 | c123        | p102       |       20 |      200000 | gpay         | 2026-06-06 00:00:00 | shipping     |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
1 row in set (0.02 sec)


mysql>  select * from customer;
+-------------+--------+----------+------------------+------------+---------+----------+
| customer_id | name   | city     | email            | phone_no   | address | pin_code |
+-------------+--------+----------+------------------+------------+---------+----------+
| C123        | Avdhut | Rasayani | avdh@gmail.com   | 1234567899 | ABC     |     1234 |
| C4          | Mihir  | Rasayani | mihir@gmail.com  | 1234567899 | DEF     |        5 |
| C5          | Neha   | Panvel   | neha@gmail.com   | 1234567899 | GHI     |        8 |
| C6          | Devesh | Panvel   | devesh@gmail.com | 1234567899 | JKL     |        7 |
| C7          | Linkan | Thane    | linkan@gmail.com | 1234567899 | MNO     |        9 |
+-------------+--------+----------+------------------+------------+---------+----------+
5 rows in set (0.00 sec)

mysql> select * from customer where customer_id in('C1','C4','C5');
+-------------+-------+----------+-----------------+------------+---------+----------+
| customer_id | name  | city     | email           | phone_no   | address | pin_code |
+-------------+-------+----------+-----------------+------------+---------+----------+
| C4          | Mihir | Rasayani | mihir@gmail.com | 1234567899 | DEF     |        5 |
| C5          | Neha  | Panvel   | neha@gmail.com  | 1234567899 | GHI     |        8 |
+-------------+-------+----------+-----------------+------------+---------+----------+
2 rows in set (0.00 sec)

mysql> select * from customer where customer_id in('C123','C4','C5');
+-------------+--------+----------+-----------------+------------+---------+----------+
| customer_id | name   | city     | email           | phone_no   | address | pin_code |
+-------------+--------+----------+-----------------+------------+---------+----------+
| C123        | Avdhut | Rasayani | avdh@gmail.com  | 1234567899 | ABC     |     1234 |
| C4          | Mihir  | Rasayani | mihir@gmail.com | 1234567899 | DEF     |        5 |
| C5          | Neha   | Panvel   | neha@gmail.com  | 1234567899 | GHI     |        8 |
+-------------+--------+----------+-----------------+------------+---------+----------+
3 rows in set (0.00 sec)

mysql> select * from customer where customer_id not in('C123','C4','C5');
+-------------+--------+--------+------------------+------------+---------+----------+
| customer_id | name   | city   | email            | phone_no   | address | pin_code |
+-------------+--------+--------+------------------+------------+---------+----------+
| C6          | Devesh | Panvel | devesh@gmail.com | 1234567899 | JKL     |        7 |
| C7          | Linkan | Thane  | linkan@gmail.com | 1234567899 | MNO     |        9 |
+-------------+--------+--------+------------------+------------+---------+----------+
2 rows in set (0.00 sec)

mysql> select * from customer where city is null;
Empty set (0.00 sec)

mysql>  select * from customer where city is not null;
+-------------+--------+----------+------------------+------------+---------+----------+
| customer_id | name   | city     | email            | phone_no   | address | pin_code |
+-------------+--------+----------+------------------+------------+---------+----------+
| C123        | Avdhut | Rasayani | avdh@gmail.com   | 1234567899 | ABC     |     1234 |
| C4          | Mihir  | Rasayani | mihir@gmail.com  | 1234567899 | DEF     |        5 |
| C5          | Neha   | Panvel   | neha@gmail.com   | 1234567899 | GHI     |        8 |
| C6          | Devesh | Panvel   | devesh@gmail.com | 1234567899 | JKL     |        7 |
| C7          | Linkan | Thane    | linkan@gmail.com | 1234567899 | MNO     |        9 |
+-------------+--------+----------+------------------+------------+---------+----------+
5 rows in set (0.00 sec)

mysql> select * from customer where city='Thane' and address='GHI';
Empty set (0.00 sec)

mysql> select * from customer where city='Thane' or address='GHI';
+-------------+--------+--------+------------------+------------+---------+----------+
| customer_id | name   | city   | email            | phone_no   | address | pin_code |
+-------------+--------+--------+------------------+------------+---------+----------+
| C5          | Neha   | Panvel | neha@gmail.com   | 1234567899 | GHI     |        8 |
| C7          | Linkan | Thane  | linkan@gmail.com | 1234567899 | MNO     |        9 |
+-------------+--------+--------+------------------+------------+---------+----------+
2 rows in set (0.00 sec)

mysql>