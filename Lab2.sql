/*

Lab 1: Database Schema: Consider a simple database with one tables: BankAccount 

 Table: ● Columns: account_id (Primary Key), account_holder_name, account_balance

 Task 1: Insert Data Write an SQL INSERT statement to insert data into the BankAccount table

. Task 2: Retrieving Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance of all account holders from the BankAccount table. 

Task 3: Filtering Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance where the account_balance is more than 30,000.

 Task 4: Updating Data Write an SQL UPDATE statement to change the account_balance of the account holder whose ID is 101. 
/*

mysql> show databases;
+--------------------------+
| Database                 |
+--------------------------+
| e_commerce               |
| ecommerce                |
| information_schema       |
| joints                   |
| mysql                    |
| performance_schema       |
| sakila                   |
| store_procedure_example  |
| student                  |
| studentmanagementsystem  |
| studentmanagementsystem1 |
| sys                      |
| world                    |
+--------------------------+
13 rows in set (0.01 sec)

mysql> create database bank;
Query OK, 1 row affected (0.04 sec)

mysql> use bank;
Database changed
mysql> create table bank_account(account_id varchar(10) not null primary key,accountholder_name varchar(50) not null,account_balance double not null);
Query OK, 0 rows affected (0.11 sec)

mysql> insert into bank_account values('101','Vijaya Rane',30000),('102','Anchal Gupta',25000),('103','Muskan Chandani',32000),('104','Yogesh Rane',20000),('105','Santosh Gawde',40000);
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from bank_account;
+------------+--------------------+-----------------+
| account_id | accountholder_name | account_balance |
+------------+--------------------+-----------------+
| 101        | Vijaya Rane        |           30000 |
| 102        | Anchal Gupta       |           25000 |
| 103        | Muskan Chandani    |           32000 |
| 104        | Yogesh Rane        |           20000 |
| 105        | Santosh Gawde      |           40000 |
+------------+--------------------+-----------------+
5 rows in set (0.00 sec)

mysql> select  accountholder_name,account_balance from bank_account;
+--------------------+-----------------+
| accountholder_name | account_balance |
+--------------------+-----------------+
| Vijaya Rane        |           30000 |
| Anchal Gupta       |           25000 |
| Muskan Chandani    |           32000 |
| Yogesh Rane        |           20000 |
| Santosh Gawde      |           40000 |
+--------------------+-----------------+
5 rows in set (0.00 sec)


mysql> select  accountholder_name,account_balance from bank_account where account_balance > 30000;
+--------------------+-----------------+
| accountholder_name | account_balance |
+--------------------+-----------------+
| Muskan Chandani    |           32000 |
| Santosh Gawde      |           40000 |
+--------------------+-----------------+
2 rows in set (0.00 sec)

mysql> select * from bank_account;
+------------+--------------------+-----------------+
| account_id | accountholder_name | account_balance |
+------------+--------------------+-----------------+
| 101        | Vijaya Rane        |           30000 |
| 102        | Anchal Gupta       |           25000 |
| 103        | Muskan Chandani    |           32000 |
| 104        | Yogesh Rane        |           20000 |
| 105        | Santosh Gawde      |           40000 |
+------------+--------------------+-----------------+
5 rows in set (0.00 sec)

mysql> update bank_account set account_balance=30000 where account_id='102';
Query OK, 1 row affected (0.07 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from bank_account;
+------------+--------------------+-----------------+
| account_id | accountholder_name | account_balance |
+------------+--------------------+-----------------+
| 101        | Vijaya Rane        |           30000 |
| 102        | Anchal Gupta       |           30000 |
| 103        | Muskan Chandani    |           32000 |
| 104        | Yogesh Rane        |           20000 |
| 105        | Santosh Gawde      |           40000 |
+------------+--------------------+-----------------+
5 rows in set (0.00 sec)