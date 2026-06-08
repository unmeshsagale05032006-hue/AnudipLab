/*
Create Database StudentManagementSystem
1.Create Table student
with attribute  StudentID (Primary Key)
Name
Age
Address
2.Create a table with named Feedback 

with attributes: ● FeedbackID (Primary Key) 

● StudentID (Foreign key) 

● Date 

● InstructorName 

● Feedback
Add 5 Records in table
/*


mysql> create database StudentManagementSystem1;
Query OK, 1 row affected (0.01 sec)


mysql> use StudentManagementSystem1;
Database changed

mysql> create table student(student_id varchar(10) not null primary key,Name varchar(50) not null,age int not null,address varchar(50) not null);
Query OK, 0 rows affected (0.08 sec)

mysql> desc student;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| student_id | varchar(10) | NO   | PRI | NULL    |       |
| Name       | varchar(50) | NO   |     | NULL    |       |
| age        | int         | NO   |     | NULL    |       |
| address    | varchar(50) | NO   |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql> insert into student(student_id,Name,age,address)values('s101','unmesh',20,'Thane'),('s102','nikhil',20,'wagle'),('s103','tushar',21,'Thane'),('s104','siddhu',21,'wagle'),('s105','aditya',21,'pune');
Query OK, 5 rows affected (0.02 sec)

mysql> select * from student;
+------------+--------+-----+---------+
| student_id | Name   | age | address |
+------------+--------+-----+---------+
| s101       | unmesh |  20 | Thane   |
| s102       | nikhil |  20 | wagle   |
| s103       | tushar |  21 | Thane   |
| s104       | siddhu |  21 | wagle   |
| s105       | aditya |  21 | pune    |
+------------+--------+-----+---------+
5 rows in set (0.00 sec)

mysql> create table feedback(feedback_id varchar(10) not null primary key,student_id varchar(10) not null,date datetime not null,instructor_name varchar(50) not null,feedback varchar(50) not null,foreign key(student_id)references student(student_id));
Query OK, 0 rows affected (0.07 sec)

mysql> desc feedback;
+-----------------+-------------+------+-----+---------+-------+
| Field           | Type        | Null | Key | Default | Extra |
+-----------------+-------------+------+-----+---------+-------+
| feedback_id     | varchar(10) | NO   | PRI | NULL    |       |
| student_id      | varchar(10) | NO   | MUL | NULL    |       |
| date            | datetime    | NO   |     | NULL    |       |
| instructor_name | varchar(50) | NO   |     | NULL    |       |
| feedback        | varchar(50) | NO   |     | NULL    |       |
+-----------------+-------------+------+-----+---------+-------+
5 rows in set (0.02 sec)

mysql> insert into feedback(feedback_id,student_id,date,instructor_name,feedback)values('101','s101','2026-06-05','rohan','Good'),('102','s102','2026-06-05','gaurav','Average'),('103','s103','2026-06-05','rohit','Excellent'),('104','s104','2026-06-06','shubham','Good'),('105','s105','2026-06-06','kiran','Neutral');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from feedback;
+-------------+------------+---------------------+-----------------+-----------+
| feedback_id | student_id | date                | instructor_name | feedback  |
+-------------+------------+---------------------+-----------------+-----------+
| 101         | s101       | 2026-06-05 00:00:00 | rohan           | Good      |
| 102         | s102       | 2026-06-05 00:00:00 | gaurav          | Average   |
| 103         | s103       | 2026-06-05 00:00:00 | rohit           | Excellent |
| 104         | s104       | 2026-06-06 00:00:00 | shubham         | Good      |
| 105         | s105       | 2026-06-06 00:00:00 | kiran           | Neutral   |
+-------------+------------+---------------------+-----------------+-----------+
5 rows in set (0.00 sec)