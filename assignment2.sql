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
+-------------+----------------+-----------------+
| employee_id | employee_name  | employee_salary |
+-------------+----------------+-----------------+
|           1 | viraj pukale   |           25000 |
|           2 | kiran lad      |           30000 |
|           3 | omkar chorge   |           26000 |
|           4 | vaibhav jadhav |           20000 |
|           5 | soham sawant   |           23000 |
+-------------+----------------+-----------------+
5 rows in set (0.02 sec)

mysql> select * from employee_details limit 3;
+-------------+---------------+-----------------+
| employee_id | employee_name | employee_salary |
+-------------+---------------+-----------------+
|           1 | viraj pukale  |           25000 |
|           2 | kiran lad     |           30000 |
|           3 | omkar chorge  |           26000 |
+-------------+---------------+-----------------+
3 rows in set (0.00 sec)

mysql> select * from employee_details limit 2;
+-------------+---------------+-----------------+
| employee_id | employee_name | employee_salary |
+-------------+---------------+-----------------+
|           1 | viraj pukale  |           25000 |
|           2 | kiran lad     |           30000 |
+-------------+---------------+-----------------+
2 rows in set (0.00 sec)

mysql> select * from employee_details order by employee_salary;
+-------------+----------------+-----------------+
| employee_id | employee_name  | employee_salary |
+-------------+----------------+-----------------+
|           4 | vaibhav jadhav |           20000 |
|           5 | soham sawant   |           23000 |
|           1 | viraj pukale   |           25000 |
|           3 | omkar chorge   |           26000 |
|           2 | kiran lad      |           30000 |
+-------------+----------------+-----------------+
5 rows in set (0.00 sec)

mysql> select * from employee_details order by employee_name;
+-------------+----------------+-----------------+
| employee_id | employee_name  | employee_salary |
+-------------+----------------+-----------------+
|           2 | kiran lad      |           30000 |
|           3 | omkar chorge   |           26000 |
|           5 | soham sawant   |           23000 |
|           4 | vaibhav jadhav |           20000 |
|           1 | viraj pukale   |           25000 |
+-------------+----------------+-----------------+
5 rows in set (0.00 sec)

mysql> select * from employee_details order by employee_name desc;
+-------------+----------------+-----------------+
| employee_id | employee_name  | employee_salary |
+-------------+----------------+-----------------+
|           1 | viraj pukale   |           25000 |
|           4 | vaibhav jadhav |           20000 |
|           5 | soham sawant   |           23000 |
|           3 | omkar chorge   |           26000 |
|           2 | kiran lad      |           30000 |
+-------------+----------------+-----------------+
5 rows in set (0.00 sec)

mysql> select * from employee_details order by employee_salary desc;
+-------------+----------------+-----------------+
| employee_id | employee_name  | employee_salary |
+-------------+----------------+-----------------+
|           2 | kiran lad      |           30000 |
|           3 | omkar chorge   |           26000 |
|           1 | viraj pukale   |           25000 |
|           5 | soham sawant   |           23000 |
|           4 | vaibhav jadhav |           20000 |
+-------------+----------------+-----------------+
5 rows in set (0.00 sec)

mysql> select * from employee_details order by employee_salary desc limit 2;
+-------------+---------------+-----------------+
| employee_id | employee_name | employee_salary |
+-------------+---------------+-----------------+
|           2 | kiran lad     |           30000 |
|           3 | omkar chorge  |           26000 |
+-------------+---------------+-----------------+
2 rows in set (0.00 sec)

mysql> select * from customer;
+-------------+--------+----------+--------------------------------+------------+----------------+----------+
| customer_id | name   | city     | email                          | phone_no   | address        | pin_code |
+-------------+--------+----------+--------------------------------+------------+----------------+----------+
| c101        | unmesh | thane    | unmeshsagale05032006@gmail.com | 7304109833 | majiwada thane |   400601 |
| c102        | tushar | thane    | tushar03@gmail.com             | 7506382528 | nitin company  |   400602 |
| c103        | nikhil | mulund   | nikedits01@gmail.com           | 9136261556 | shanti nagar   |   400605 |
| c104        | siddhu | mulund   | siddhu02@gmailcom              | 9270332560 | kamgar         |   400602 |
| c105        | pratik | ghansoli | pratik05@gmail.com             | 7506384561 | shastri nagar  |   400610 |
+-------------+--------+----------+--------------------------------+------------+----------------+----------+
5 rows in set (0.00 sec)

mysql> select distinct city from customer;
+----------+
| city     |
+----------+
| thane    |
| mulund   |
| ghansoli |
+----------+
3 rows in set (0.01 sec)

mysql> select city from customer;
+----------+
| city     |
+----------+
| thane    |
| thane    |
| mulund   |
| mulund   |
| ghansoli |
+----------+
5 rows in set (0.00 sec)

mysql> select * from customer;
+-------------+--------+----------+--------------------------------+------------+----------------+----------+
| customer_id | name   | city     | email                          | phone_no   | address        | pin_code |
+-------------+--------+----------+--------------------------------+------------+----------------+----------+
| c101        | unmesh | thane    | unmeshsagale05032006@gmail.com | 7304109833 | majiwada thane |   400601 |
| c102        | tushar | thane    | tushar03@gmail.com             | 7506382528 | nitin company  |   400602 |
| c103        | nikhil | mulund   | nikedits01@gmail.com           | 9136261556 | shanti nagar   |   400605 |
| c104        | siddhu | mulund   | siddhu02@gmailcom              | 9270332560 | kamgar         |   400602 |
| c105        | pratik | ghansoli | pratik05@gmail.com             | 7506384561 | shastri nagar  |   400610 |
+-------------+--------+----------+--------------------------------+------------+----------------+----------+
5 rows in set (0.00 sec)

mysql> select * from customer where customer_id between 'c101' and 'c104';
+-------------+--------+--------+--------------------------------+------------+----------------+----------+
| customer_id | name   | city   | email                          | phone_no   | address        | pin_code |
+-------------+--------+--------+--------------------------------+------------+----------------+----------+
| c101        | unmesh | thane  | unmeshsagale05032006@gmail.com | 7304109833 | majiwada thane |   400601 |
| c102        | tushar | thane  | tushar03@gmail.com             | 7506382528 | nitin company  |   400602 |
| c103        | nikhil | mulund | nikedits01@gmail.com           | 9136261556 | shanti nagar   |   400605 |
| c104        | siddhu | mulund | siddhu02@gmailcom              | 9270332560 | kamgar         |   400602 |
+-------------+--------+--------+--------------------------------+------------+----------------+----------+
4 rows in set (0.01 sec)

mysql> select * from order_details;
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| order_id | customer_id | product_id | quantity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
|      101 | c101        | p101       |       10 |      450000 | gpay         | 2026-06-05 00:00:00 | shipping     |
|      102 | c102        | p102       |       12 |      300000 | gpay         | 2026-05-05 00:00:00 | shipping     |
|      103 | c103        | p103       |       15 |      250000 | gpay         | 2026-04-05 00:00:00 | delivery     |
|      104 | c104        | p104       |        5 |       15000 | phonepay     | 2026-07-05 00:00:00 | shipping     |
|      105 | c105        | p105       |       11 |       10000 | cash         | 2026-08-05 00:00:00 | delivery     |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
5 rows in set (0.01 sec)

mysql> select * from order_details where order_date between '2026-06-04' and '2026-06-07';
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| order_id | customer_id | product_id | quantity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
|      101 | c101        | p101       |       10 |      450000 | gpay         | 2026-06-05 00:00:00 | shipping     |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
1 row in set (0.00 sec)

mysql> select * from order_details where order_date not between '2026-06-04' and '2026-06-07';
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| order_id | customer_id | product_id | quantity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
|      102 | c102        | p102       |       12 |      300000 | gpay         | 2026-05-05 00:00:00 | shipping     |
|      103 | c103        | p103       |       15 |      250000 | gpay         | 2026-04-05 00:00:00 | delivery     |
|      104 | c104        | p104       |        5 |       15000 | phonepay     | 2026-07-05 00:00:00 | shipping     |
|      105 | c105        | p105       |       11 |       10000 | cash         | 2026-08-05 00:00:00 | delivery     |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
4 rows in set (0.00 sec)

mysql> select * from customer;
+-------------+--------+----------+--------------------------------+------------+----------------+----------+
| customer_id | name   | city     | email                          | phone_no   | address        | pin_code |
+-------------+--------+----------+--------------------------------+------------+----------------+----------+
| c101        | unmesh | thane    | unmeshsagale05032006@gmail.com | 7304109833 | majiwada thane |   400601 |
| c102        | tushar | thane    | tushar03@gmail.com             | 7506382528 | nitin company  |   400602 |
| c103        | nikhil | mulund   | nikedits01@gmail.com           | 9136261556 | shanti nagar   |   400605 |
| c104        | siddhu | mulund   | siddhu02@gmailcom              | 9270332560 | kamgar         |   400602 |
| c105        | pratik | ghansoli | pratik05@gmail.com             | 7506384561 | shastri nagar  |   400610 |
+-------------+--------+----------+--------------------------------+------------+----------------+----------+
5 rows in set (0.00 sec)

mysql> select * from customer where customer_id in('c101','c103','c105');
+-------------+--------+----------+--------------------------------+------------+----------------+----------+
| customer_id | name   | city     | email                          | phone_no   | address        | pin_code |
+-------------+--------+----------+--------------------------------+------------+----------------+----------+
| c101        | unmesh | thane    | unmeshsagale05032006@gmail.com | 7304109833 | majiwada thane |   400601 |
| c103        | nikhil | mulund   | nikedits01@gmail.com           | 9136261556 | shanti nagar   |   400605 |
| c105        | pratik | ghansoli | pratik05@gmail.com             | 7506384561 | shastri nagar  |   400610 |
+-------------+--------+----------+--------------------------------+------------+----------------+----------+
3 rows in set (0.06 sec)


mysql> select * from customer where customer_id not in('c101','c103','c105');
+-------------+--------+--------+--------------------+------------+---------------+----------+
| customer_id | name   | city   | email              | phone_no   | address       | pin_code |
+-------------+--------+--------+--------------------+------------+---------------+----------+
| c102        | tushar | thane  | tushar03@gmail.com | 7506382528 | nitin company |   400602 |
| c104        | siddhu | mulund | siddhu02@gmailcom  | 9270332560 | kamgar        |   400602 |
+-------------+--------+--------+--------------------+------------+---------------+----------+
2 rows in set (0.00 sec)

mysql> select * from customer where city is null;
Empty set (0.00 sec)

mysql> select * from customer where city is  not null;
+-------------+--------+----------+--------------------------------+------------+----------------+----------+
| customer_id | name   | city     | email                          | phone_no   | address        | pin_code |
+-------------+--------+----------+--------------------------------+------------+----------------+----------+
| c101        | unmesh | thane    | unmeshsagale05032006@gmail.com | 7304109833 | majiwada thane |   400601 |
| c102        | tushar | thane    | tushar03@gmail.com             | 7506382528 | nitin company  |   400602 |
| c103        | nikhil | mulund   | nikedits01@gmail.com           | 9136261556 | shanti nagar   |   400605 |
| c104        | siddhu | mulund   | siddhu02@gmailcom              | 9270332560 | kamgar         |   400602 |
| c105        | pratik | ghansoli | pratik05@gmail.com             | 7506384561 | shastri nagar  |   400610 |
+-------------+--------+----------+--------------------------------+------------+----------------+----------+
5 rows in set (0.00 sec)

mysql> select * from customer where city='thane' and address='majiwada thane';
+-------------+--------+-------+--------------------------------+------------+----------------+----------+
| customer_id | name   | city  | email                          | phone_no   | address        | pin_code |
+-------------+--------+-------+--------------------------------+------------+----------------+----------+
| c101        | unmesh | thane | unmeshsagale05032006@gmail.com | 7304109833 | majiwada thane |   400601 |
+-------------+--------+-------+--------------------------------+------------+----------------+----------+
1 row in set (0.00 sec)

mysql> select * from customer where city='thane' and address='kamgar';
Empty set (0.00 sec)

mysql> select * from customer where city='thane' or address='kamgar';
+-------------+--------+--------+--------------------------------+------------+----------------+----------+
| customer_id | name   | city   | email                          | phone_no   | address        | pin_code |
+-------------+--------+--------+--------------------------------+------------+----------------+----------+
| c101        | unmesh | thane  | unmeshsagale05032006@gmail.com | 7304109833 | majiwada thane |   400601 |
| c102        | tushar | thane  | tushar03@gmail.com             | 7506382528 | nitin company  |   400602 |
| c104        | siddhu | mulund | siddhu02@gmailcom              | 9270332560 | kamgar         |   400602 |
+-------------+--------+--------+--------------------------------+------------+----------------+----------+
3 rows in set (0.00 sec)