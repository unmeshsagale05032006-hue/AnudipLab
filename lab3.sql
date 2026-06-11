/*
Task: Let's consider a scenario where you want to retrieve information about students

from a database table named student and display the results in ascending order based on their last names.

Student table contain column (stud_id,FirstName,LastName,Age,Phoneno,Address) add 5 records in tables.

Hint: Use orderBy clause in a ascending Order
/*


mysql> create database studentinfo;
Query OK, 1 row affected (0.02 sec)

mysql> show databases;
+--------------------------+
| Database                 |
+--------------------------+
| bank                     |
| e_commerce               |
| ecommerce                |
| information_schema       |
| joints                   |
| mysql                    |
| performance_schema       |
| sakila                   |
| store_procedure_example  |
| student                  |
| studentinfo              |
| studentmanagementsystem  |
| studentmanagementsystem1 |
| sys                      |
| world                    |
+--------------------------+
15 rows in set (0.01 sec)

mysql> use studentinfo;
Database changed
mysql> create table student(student_id int not null primary key,first_name varchar(20) not null,last_name varchar(20) not null,age int not null,phone_no int not null,address varchar(50) not null);
Query OK, 0 rows affected (0.05 sec)

mysql> desc tables;
ERROR 1146 (42S02): Table 'studentinfo.tables' doesn't exist
mysql> desc student;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| student_id | int         | NO   | PRI | NULL    |       |
| first_name | varchar(20) | NO   |     | NULL    |       |
| last_name  | varchar(20) | NO   |     | NULL    |       |
| age        | int         | NO   |     | NULL    |       |
| phone_no   | int         | NO   |     | NULL    |       |
| address    | varchar(50) | NO   |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.01 sec)

mysql> alter table student modify phone_no varchar(15) not null;
Query OK, 0 rows affected (0.13 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> insert into student values(101,'rohan','pawar',21,7301429865,'thane'),(102,'sahil','more',20,7301424562,'vasai'),(103,'vishal','kalokhe',20,9785429865,'mumbai'),(104,'ajay','sawant',21,9270995623,'shastri nagar'),(105,'rutik','kadam',22,7506325620,'thane');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from student;
+------------+------------+-----------+-----+------------+---------------+
| student_id | first_name | last_name | age | phone_no   | address       |
+------------+------------+-----------+-----+------------+---------------+
|        101 | rohan      | pawar     |  21 | 7301429865 | thane         |
|        102 | sahil      | more      |  20 | 7301424562 | vasai         |
|        103 | vishal     | kalokhe   |  20 | 9785429865 | mumbai        |
|        104 | ajay       | sawant    |  21 | 9270995623 | shastri nagar |
|        105 | rutik      | kadam     |  22 | 7506325620 | thane         |
+------------+------------+-----------+-----+------------+---------------+
5 rows in set (0.00 sec)

mysql> select * from students order by last_name;
ERROR 1146 (42S02): Table 'studentinfo.students' doesn't exist
mysql> select * from student order by last_name;
+------------+------------+-----------+-----+------------+---------------+
| student_id | first_name | last_name | age | phone_no   | address       |
+------------+------------+-----------+-----+------------+---------------+
|        105 | rutik      | kadam     |  22 | 7506325620 | thane         |
|        103 | vishal     | kalokhe   |  20 | 9785429865 | mumbai        |
|        102 | sahil      | more      |  20 | 7301424562 | vasai         |
|        101 | rohan      | pawar     |  21 | 7301429865 | thane         |
|        104 | ajay       | sawant    |  21 | 9270995623 | shastri nagar |
+------------+------------+-----------+-----+------------+---------------+
5 rows in set (0.00 sec)
