mysql> create database joins;
Query OK, 1 row affected (0.04 sec)

mysql> use joins;
Database changed

mysql> create table department(department_id int not null primary key,department_namevarchar(30) not null);
Query OK, 0 rows affected (0.09 sec)

mysql> desc department;
+-----------------+-------------+------+-----+---------+-------+
| Field           | Type        | Null | Key | Default | Extra |
+-----------------+-------------+------+-----+---------+-------+
| department_id   | int         | NO   | PRI | NULL    |       |
| department_name | varchar(30) | NO   |     | NULL    |       |
+-----------------+-------------+------+-----+---------+-------+
2 rows in set (0.04 sec)

mysql> insert into department values(1,'HR'),(1,'HR'),^C
mysql> insert into department values(1,'HR'),(2,'IT'),(3,'Finance'),(4,'marketing');
Query OK, 4 rows affected (0.02 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from department;
+---------------+-----------------+
| department_id | department_name |
+---------------+-----------------+
|             1 | HR              |
|             2 | IT              |
|             3 | Finance         |
|             4 | marketing       |
+---------------+-----------------+
4 rows in set (0.00 sec)

mysql> create table employee(emp_id int not null primary key,emp_name varchar(30) not null,department_id int,foreign key(department_id) references department(department_id));
Query OK, 0 rows affected (0.06 sec)

mysql> insert into employee values(1,'unmesh',1),(2,'purva',2),(3,'neha',1),(4,'nikhil',null),(5,'tushar',4);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from employee;
+--------+----------+---------------+
| emp_id | emp_name | department_id |
+--------+----------+---------------+
|      1 | unmesh   |             1 |
|      2 | purva    |             2 |
|      3 | neha     |             1 |
|      4 | nikhil   |          NULL |
|      5 | tushar   |             4 |
+--------+----------+---------------+
5 rows in set (0.00 sec)

mysql> select * from department;
+---------------+-----------------+
| department_id | department_name |
+---------------+-----------------+
|             1 | HR              |
|             2 | IT              |
|             3 | Finance         |
|             4 | marketing       |
+---------------+-----------------+
4 rows in set (0.00 sec)

mysql> select emp_name,department_name from employee inner join department on employee.department_id=department.department_id;
+----------+-----------------+
| emp_name | department_name |
+----------+-----------------+
| unmesh   | HR              |
| neha     | HR              |
| purva    | IT              |
| tushar   | marketing       |
+----------+-----------------+
4 rows in set (0.00 sec)

mysql> select emp_name,department_name from employee left join department on employee.department_id=department.department_id;
+----------+-----------------+
| emp_name | department_name |
+----------+-----------------+
| unmesh   | HR              |
| purva    | IT              |
| neha     | HR              |
| nikhil   | NULL            |
| tushar   | marketing       |
+----------+-----------------+
5 rows in set (0.00 sec)

mysql> select * from employee;
+--------+----------+---------------+
| emp_id | emp_name | department_id |
+--------+----------+---------------+
|      1 | unmesh   |             1 |
|      2 | purva    |             2 |
|      3 | neha     |             1 |
|      4 | nikhil   |          NULL |
|      5 | tushar   |             4 |
+--------+----------+---------------+
5 rows in set (0.00 sec)

mysql> select * from department;
+---------------+-----------------+
| department_id | department_name |
+---------------+-----------------+
|             1 | HR              |
|             2 | IT              |
|             3 | Finance         |
|             4 | marketing       |
+---------------+-----------------+
4 rows in set (0.00 sec)

mysql> select emp_name,department_name from employee right join department on employee.department_id=department.department_id;
+----------+-----------------+
| emp_name | department_name |
+----------+-----------------+
| unmesh   | HR              |
| neha     | HR              |
| purva    | IT              |
| NULL     | Finance         |
| tushar   | marketing       |
+----------+-----------------+
5 rows in set (0.00 sec)

mysql> select emp_name,department_name from employee cross join department;
+----------+-----------------+
| emp_name | department_name |
+----------+-----------------+
| unmesh   | marketing       |
| unmesh   | Finance         |
| unmesh   | IT              |
| unmesh   | HR              |
| purva    | marketing       |
| purva    | Finance         |
| purva    | IT              |
| purva    | HR              |
| neha     | marketing       |
| neha     | Finance         |
| neha     | IT              |
| neha     | HR              |
| nikhil   | marketing       |
| nikhil   | Finance         |
| nikhil   | IT              |
| nikhil   | HR              |
| tushar   | marketing       |
| tushar   | Finance         |
| tushar   | IT              |
| tushar   | HR              |
+----------+-----------------+
20 rows in set (0.00 sec)