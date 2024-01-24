## SQL_TM:


1. SQL is Stand for?
* Structured Query Language

2. Alternative for SQL?
* Excel
* MongoDB (nosql)
* Redis etc

3. What is ANSI?
* American National Standard Insitute

4. What ANSI will do?
* It will create rules that help things safer,work better together,
and improve the products and services.

5. SQL became an ANSI Standard in 1986.

6. SQL became an ISO standard in 1987.

7. ISO ?
- Internal Organization for Standardization.

8. What is extension of python?
.py

9. Extension for text file?
.txt

10. Extension for folder?
Folder dont have extension

11. Extension for SQL?
.sql
.db
.sqlite
.mdb etc
depends on database system. 

12. Examples for popular DBMS software used with SQL?
MySQL
Oracle Database
Microsoft SQL server
MariaDB
Redis
SQLite Studio etc.

13. XAMPP 
X - Cross Platform
A - Apache
M - MySQL
P - PHP
P - Perl

14. Downloading
https://www.apachefriends.org/download.html
150mb

15. How to start?

first way:
Search XAMPP control 

second way:
local drive c -> xampp folder

Then click on start button beside apache and mysql


Then go to any browser , add this in url bar
localhost


# First Program

Customers	91
Categories	8
Employees	10
OrderDetails	518
Orders	196
Products	77
Shippers	3
Suppliers

These all are called tables
Records = datas

## What is table in SQL?
* That contain row and column
* It is 2D
* Each row represents a single record
* Each Col represents attribute or fields

## 
1. Customers	
2. Categories	
3. Employees	
4. OrderDetails	
5. Orders	
6. Products	
7. Shippers	
8. Suppliers


Fetch all the data from customers table.
select * from customers;
select * from orders;
SELECT CustomerName,City FROM Customers
select CustomerName from customers;


select * from customers;

select -> keyword
SELECT -> keyword

* -> All

from - keyword
customers - table name.

SELECT DISTINCT country FROM Customers;

CREATE DATABASE bharat;

DROP DATABASE bharat;


Create Database
Drop Database
Create tables
Insert records/row


use bharat;

CREATE TABLE state(
state_id int,
state_name varchar(255),
population int
)

use bharat;

INSERT INTO state(state_id,state_name,population) values(2,"Delhi",4)

Display all the state names
Display all the state names with population

Counting all the rows
select count(*) from state;

Count all the population of state table.

SELECT * FROM state WHERE population=25;

SELECT * FROM state WHERE population BETWEEN 20 and 30;

SELECT state_id as sid, state_name as name FROM state;


## Keywords:
Select
from
where
drop
as
and
between
create
use
into
distinct
insert
database
table
in
not
NOT IN
ASC
DESC
Order by
LIKE
Update
set





select max(population) from state;

SELECT * FROM state
order by state_name;

SELECT * FROM state
order by state_name DESC;

SELECT * FROM state
order by state_name ASC,population DESC;


# Logical Operator
AND
OR
NOT


SELECT * FROM state where state_name='up';
SELECT * FROM state where not state_name='up';


SELECT * FROM Customers WHERE city NOT IN ('Paris','London');

SELECT * FROM state where state_name LIKE 'u%';

SELECT * FROM state where state_name LIKE '%i';

SELECT * FROM state where state_name LIKE '_p';


SELECT * FROM state where state_name LIKE 'U_';

Wild Card
* , _ , %

select * from customer?

select * from customers where customername like
b__%;


ALTER TABLE state 
ADD language varchar(255);

UPDATE state 
SET LANGUAGE = "Hindi"
WHERE state_name = "UP";



