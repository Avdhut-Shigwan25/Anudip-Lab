/*

Task: Let's consider a scenario where you want to retrieve information about students

from a database table named student and display the results in ascending order based on their last names.

Student table contain column (stud_id,FirstName,LastName,Age,Phoneno,Address) add 5 records in tables.

Hint: Use orderBy clause in a ascending Order

*/


mysql> CREATE TABLE student_info ( stud_id INT PRIMARY KEY, FirstName VARCHAR(50) not null ,LastName VARCHAR(50)not null, Age INT, Phoneno VARCHAR(15), Address VARCHAR(100) );
Query OK, 0 rows affected (0.06 sec)

mysql> INSERT INTO student_info (stud_id, FirstName, LastName, Age, Phoneno, Address) values (01,'Avdhut', 'Shigwan',21,'5643154254','Panvel');
Query OK, 1 row affected (0.02 sec)

mysql> INSERT INTO student_info (stud_id, FirstName, LastName, Age, Phoneno, Address) values (02,'Sakshi', 'Pawar',21,'4556756284','Vashi'), (03,'Mihir', 'Latke',22, '457875987','Nerul'), (04,'Yogesh','Salve',20,'256876574','Diva'),(05,'Pratik','Revne',21,'524545245','Kharghar');
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from  student_info;
+---------+-----------+----------+------+------------+----------+
| stud_id | FirstName | LastName | Age  | Phoneno    | Address  |
+---------+-----------+----------+------+------------+----------+
|       1 | Avdhut    | Shigwan  |   21 | 5643154254 | Panvel   |
|       2 | Sakshi    | Pawar    |   21 | 4556756284 | Vashi    |
|       3 | Mihir     | Latke    |   22 | 457875987  | Nerul    |
|       4 | Yogesh    | Salve    |   20 | 256876574  | Diva     |
|       5 | Pratik    | Revne    |   21 | 524545245  | Kharghar |
+---------+-----------+----------+------+------------+----------+
5 rows in set (0.02 sec)

mysql> select * from  student_info order by LastName asc;
+---------+-----------+----------+------+------------+----------+
| stud_id | FirstName | LastName | Age  | Phoneno    | Address  |
+---------+-----------+----------+------+------------+----------+
|       3 | Mihir     | Latke    |   22 | 457875987  | Nerul    |
|       2 | Sakshi    | Pawar    |   21 | 4556756284 | Vashi    |
|       5 | Pratik    | Revne    |   21 | 524545245  | Kharghar |
|       4 | Yogesh    | Salve    |   20 | 256876574  | Diva     |
|       1 | Avdhut    | Shigwan  |   21 | 5643154254 | Panvel   |
+---------+-----------+----------+------+------------+----------+
5 rows in set (0.01 sec)

mysql>


