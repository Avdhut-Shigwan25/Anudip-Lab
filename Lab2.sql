/*


Lab 1: Database Schema: Consider a simple database with one tables: BankAccount 

 Table: ● Columns: account_id (Primary Key), account_holder_name, account_balance

 Task 1: Insert Data Write an SQL INSERT statement to insert data into the BankAccount table

. Task 2: Retrieving Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance of all account holders from the BankAccount table. 

Task 3: Filtering Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance where the account_balance is more than 30,000.

 Task 4: Updating Data Write an SQL UPDATE statement to change the account_balance of the account holder whose ID is 101. 

*/

mysql> create table BankAccount (account_id int(10)not null primary key, account_holder_name varchar(100) not null, account_balance double not null);
Query OK, 0 rows affected, 1 warning (0.10 sec)

mysql> INSERT INTO BankAccount (account_id, account_holder_name, account_balance) values(1,'Avdhut Shigwan', 500000);
Query OK, 1 row affected (0.01 sec)


mysql> select * from bankaccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
|          1 | Avdhut Shigwan      |          500000 |
+------------+---------------------+-----------------+
1 row in set (0.00 sec)

mysql> INSERT INTO BankAccount (account_id, account_holder_name, account_balance) values(2,'Yogesh salve', 10000);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO BankAccount (account_id, account_holder_name, account_balance) values(3,'Devesh shinde', 40000);
Query OK, 1 row affected (0.02 sec)

mysql> INSERT INTO BankAccount (account_id, account_holder_name, account_balance) values(4,'Mihir Latke', 50000);
Query OK, 1 row affected (0.01 sec)

mysql> select * from bankaccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
|          1 | Avdhut Shigwan      |          500000 |
|          2 | Yogesh salve        |           10000 |
|          3 | Devesh shinde       |           40000 |
|          4 | Mihir Latke         |           50000 |
+------------+---------------------+-----------------+
4 rows in set (0.00 sec)

mysql> select 'Avdhut Shigwan' , 500000 from bankaccount;
+----------------+--------+
| Avdhut Shigwan | 500000 |
+----------------+--------+
| Avdhut Shigwan | 500000 |
| Avdhut Shigwan | 500000 |
| Avdhut Shigwan | 500000 |
| Avdhut Shigwan | 500000 |
+----------------+--------+
4 rows in set (0.00 sec)

mysql> SELECT account_holder_name, account_balance
    -> FROM BankAccount;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Avdhut Shigwan      |          500000 |
| Yogesh salve        |           10000 |
| Devesh shinde       |           40000 |
| Mihir Latke         |           50000 |
+---------------------+-----------------+
4 rows in set (0.00 sec)

mysql> select * from bankaccount where account_balance > 1000;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
|          1 | Avdhut Shigwan      |          500000 |
|          2 | Yogesh salve        |           10000 |
|          3 | Devesh shinde       |           40000 |
|          4 | Mihir Latke         |           50000 |
+------------+---------------------+-----------------+
4 rows in set (0.00 sec)

mysql> select * from bankaccount where account_balance > 10000;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
|          1 | Avdhut Shigwan      |          500000 |
|          3 | Devesh shinde       |           40000 |
|          4 | Mihir Latke         |           50000 |
+------------+---------------------+-----------------+
3 rows in set (0.00 sec)

mysql> select * from bankaccount where account_balance > 30000;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
|          1 | Avdhut Shigwan      |          500000 |
|          3 | Devesh shinde       |           40000 |
|          4 | Mihir Latke         |           50000 |
+------------+---------------------+-----------------+
3 rows in set (0.00 sec)

mysql> UPDATE BankAccount
    -> SET account_balance = 50000
    -> where account_id= 2;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from bankaccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
|          1 | Avdhut Shigwan      |          500000 |
|          2 | Yogesh salve        |           50000 |
|          3 | Devesh shinde       |           40000 |
|          4 | Mihir Latke         |           50000 |
+------------+---------------------+-----------------+
4 rows in set (0.00 sec)

mysql