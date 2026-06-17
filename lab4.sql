mysql> create database StudentSystem;
Query OK, 1 row affected (0.11 sec)

mysql> use StudentSystem;
Database changed

mysql> create table Student (Student_id primary key, Firstname varchar(50),Lastname varchar(50));
Query OK, 0 rows affected(0.09 sec)

mysql> create table Course (Course_id primary key,Coursename varchar(100));
Query OK, 0 rows affected(0.03 sec)

mysql> create table Enrollment (Enrollment_id int primary key, Student_id int, Course_id int, Foreign key (Student_id) references Student(Student_id),Foreign key (Course_id) references Course (Course_id));
Query OK, 0 rows affected(0.07 sec)
 
mysql> desc Student;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| Student_id | int         | NO   | PRI | NULL    |       |
| Firstname  | varchar(50) | YES  |     | NULL    |       |
| Lastname   | varchar(50) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> desc Course;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| Course_id  | int          | NO   | PRI | NULL    |       |
| Coursename | varchar(100) | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> desc Enrollment;
+---------------+------+------+-----+---------+-------+
| Field         | Type | Null | Key | Default | Extra |
+---------------+------+------+-----+---------+-------+
| Enrollment_id | int  | NO   | PRI | NULL    |       |
| Student_id    | int  | YES  | MUL | NULL    |       |
| Course_id     | int  | YES  | MUL | NULL    |       |
+---------------+------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> insert into Student values(1,'Diya','Hinge'),(2,'Tushar','Mahabal'),(3,'Unmesh','Sagale'),(4,'Purva','Sagale'),(5,'Pratik','Methe');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> insert into Course values(101,'Database Management'),(102,'Web Development'),(103,'Data structure'),(104,'Data Science'),(105,'Data Analyst');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from Student;
+------------+-----------+----------+
| Student_id | Firstname | Lastname |
+------------+-----------+----------+
|          1 | Diya      | Hinge    |
|          2 | Tushar    | Mahabal  |
|          3 | Unmesh    | Sagale   |
|          4 | Purva     | Sagale   |
|          5 | Pratik    | Methe    |
+------------+-----------+----------+
5 rows in set (0.00 sec)

mysql> select * from Course;
+-----------+---------------------+
| Course_id | Coursename          |
+-----------+---------------------+
|       101 | Database Management |
|       102 | Web Development     |
|       103 | Data structure      |
|       104 | Data Science        |
|       105 | Data Analyst        |
+-----------+---------------------+
5 rows in set (0.00 sec)

mysql> insert into Enrollment values(1,1,101),(2,3,102),(3,2,103),(4,4,104),(5,5,105);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select
    -> ^C
mysql> select * from Enrollment;
+---------------+------------+-----------+
| Enrollment_id | Student_id | Course_id |
+---------------+------------+-----------+
|             1 |          1 |       101 |
|             2 |          3 |       102 |
|             3 |          2 |       103 |
|             4 |          4 |       104 |
|             5 |          5 |       105 |
+---------------+------------+-----------+
5 rows in set (0.00 sec)

mysql> select Student.Student_id,Student.Firstname,Student.Lastname,Course.Course_id,Course.Coursename from Enrollment inner join Student on Enrollment.Student_id = Student.Student_id inner join Course on Enrollment.Course_id= Course.Course_id;
+------------+-----------+----------+-----------+---------------------+
| Student_id | Firstname | Lastname | Course_id | Coursename          |
+------------+-----------+----------+-----------+---------------------+
|          1 | Diya      | Hinge    |       101 | Database Management |
|          3 | Unmesh    | Sagale   |       102 | Web Development     |
|          2 | Tushar    | Mahabal  |       103 | Data structure      |
|          4 | Purva     | Sagale   |       104 | Data Science        |
|          5 | Pratik    | Methe    |       105 | Data Analyst        |
+------------+-----------+----------+-----------+---------------------+
5 rows in set (0.00 sec)

