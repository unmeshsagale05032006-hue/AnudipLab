mysql> show databases;
+--------------------------+
| Database                 |
+--------------------------+
| bank                     |
| e_commerce               |
| ecommerce                |
| employee                 |
| information_schema       |
| joins                    |
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
17 rows in set (0.00 sec)

mysql> use employee;
Database changed
mysql> create table emp(emp_id int primary key not null,name varchar(20) not null,department varchar(20) not null,salary int not null);
Query OK, 0 rows affected (0.07 sec)

mysql> insert into emp values(1,'Unmesh Sagale','HR',25000),(2,'Purva Sagale','IT',30000),(3,'Diya Hinge','IT',35000),(4,'Pratik methe','Marketing',20000),(5,'Nikhil Nakti','Finance',23000);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from emp;
+--------+---------------+------------+--------+
| emp_id | name          | department | salary |
+--------+---------------+------------+--------+
|      1 | Unmesh Sagale | HR         |  25000 |
|      2 | Purva Sagale  | IT         |  30000 |
|      3 | Diya Hinge    | IT         |  35000 |
|      4 | Pratik methe  | Marketing  |  20000 |
|      5 | Nikhil Nakti  | Finance    |  23000 |
+--------+---------------+------------+--------+
5 rows in set (0.00 sec)


mysql> delimiter //
mysql> create procedure getEmployee()
    -> begin
    -> select * from emp;
    -> end //
Query OK, 0 rows affected (0.01 sec)

mysql> delimiter ;
mysql> call getEmployee();
+--------+---------------+------------+--------+
| emp_id | name          | department | salary |
+--------+---------------+------------+--------+
|      1 | Unmesh Sagale | HR         |  25000 |
|      2 | Purva Sagale  | IT         |  30000 |
|      3 | Diya Hinge    | IT         |  35000 |
|      4 | Pratik methe  | Marketing  |  20000 |
|      5 | Nikhil Nakti  | Finance    |  23000 |
+--------+---------------+------------+--------+
5 rows in set (0.00 sec)

Query OK, 0 rows affected (0.01 sec)

mysql> delimiter //
mysql> create procedure getEmployeeByDepartment(in name varchar(10))
    -> begin
    -> select * from emp where department = name;
    -> end //
Query OK, 0 rows affected (0.01 sec)

mysql> delimiter ;
mysql> call getEmployeeByDepartment('HR');
+--------+---------------+------------+--------+
| emp_id | name          | department | salary |
+--------+---------------+------------+--------+
|      1 | Unmesh Sagale | HR         |  25000 |
+--------+---------------+------------+--------+
1 row in set (0.01 sec)

Query OK, 0 rows affected (0.01 sec)

mysql> call getEmployeeByDepartment('Marketing');
+--------+--------------+------------+--------+
| emp_id | name         | department | salary |
+--------+--------------+------------+--------+
|      4 | Pratik methe | Marketing  |  20000 |
+--------+--------------+------------+--------+
1 row in set (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

mysql> delimiter //
mysql> create procedure getEmployeeCount(out total int)
    -> begin
    -> select count(*) into total
    -> from emp;
    -> end //
Query OK, 0 rows affected (0.08 sec)

mysql> delimiter ;
mysql> call getEmployeeCount(@total);
Query OK, 1 row affected (0.01 sec)


mysql> select @total;
+--------+
| @total |
+--------+
|      5 |
+--------+
1 row in set (0.00 sec)

mysql> select * from emp;
+--------+---------------+------------+--------+
| emp_id | name          | department | salary |
+--------+---------------+------------+--------+
|      1 | Unmesh Sagale | HR         |  25000 |
|      2 | Purva Sagale  | IT         |  30000 |
|      3 | Diya Hinge    | IT         |  35000 |
|      4 | Pratik methe  | Marketing  |  20000 |
|      5 | Nikhil Nakti  | Finance    |  23000 |
+--------+---------------+------------+--------+
5 rows in set (0.00 sec)

mysql> desc emp;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| emp_id     | int         | NO   | PRI | NULL    |       |
| name       | varchar(20) | NO   |     | NULL    |       |
| department | varchar(20) | NO   |     | NULL    |       |
| salary     | int         | NO   |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
4 rows in set (0.07 sec)

mysql>  delimiter //
mysql> create procedure addEmployee(in id int,in name varchar(50),in department varchar(50),in salary double)
    -> begin
    -> insert into emp values(id,name,department,salary);
    -> end //
Query OK, 0 rows affected (0.01 sec)

mysql>  delimiter ;
mysql> call addEmployee(106,'Rohan Singh','HR',50000);
Query OK, 1 row affected (0.01 sec)

mysql>  select * from emp;
+--------+---------------+------------+--------+
| emp_id | name          | department | salary |
+--------+---------------+------------+--------+
|      1 | Unmesh Sagale | HR         |  25000 |
|      2 | Purva Sagale  | IT         |  30000 |
|      3 | Diya Hinge    | IT         |  35000 |
|      4 | Pratik methe  | Marketing  |  20000 |
|      5 | Nikhil Nakti  | Finance    |  23000 |
|    106 | Rohan Singh   | HR         |  50000 |
+--------+---------------+------------+--------+
6 rows in set (0.00 sec)