## JOIN in SQL?
* It is used to combine rows from two or more tables
based on related column between them.
* Types
    - INNER JOIN
    - LEFT JOIN
    - RIGHT JOIN
    - FULL JOIN
    - CROSS JOIN
    - SELF JOIN
* Syntax:
    select column1,column2 from table1
    inner join table2
    on table1.column_name = table2.column_name;
* Keywords Present: SELECT, FROM, INNER JOIN, ON


-- Create the 'employees' table
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department_id INT
);

-- Create the 'departments' table
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);



-- Insert data into the 'employees' table
INSERT INTO employees (employee_id, first_name, last_name, department_id)
VALUES
    (1, 'John', 'Doe', 1),
    (2, 'Jane', 'Smith', 2),
    (3, 'Bob', 'Johnson', 1),
    (4, 'Alice', 'Brown', 3);

-- Insert data into the 'departments' table
INSERT INTO departments (department_id, department_name)
VALUES
    (1, 'HR'),
    (2, 'Finance'),
    (3, 'IT');


SELECT employees.first_name, employees.last_name, departments.department_name
FROM employees
INNER JOIN departments ON employees.department_id = departments.department_id;


# Left Join
* It will return all the rows from the left tables and matching rows from the right
table.
* if there is no match, NULL values are returned for columns from the right tables.
* Example:
SELECT employees.first_name, employees.last_name, departments.department_name
FROM employees
LEFT JOIN departments ON employees.department_id = departments.department_id;



# Right Join
* It will return all the rows from the Right tables and matching rows from the left
table.
* if there is no match, NULL values are returned for columns from the left tables.
* Example:

SELECT employees.first_name, employees.last_name, departments.department_name
FROM employees
RIGHT JOIN departments ON employees.department_id = departments.department_id;


SELECT employees.first_name,departments.department_name
FROM employees INNER JOIN departments ON employees.department_id = departments.department_id;

# Full Join

# Self Join
1. Here table is joined with itself.
2. Example:

---------
EMPLOYEE
--------
empid
firstname
lastname
managerid

Select  e1.firstname as employee_name,
        e2.firstname as manager_name 
from employee e1 
LEFT JOIN 
employee e2 ON e1.managerid = e2.empid

1 John Doe NULL (John is ceo/manager because it is null)
2 Alex R 1 (Alex will report to John)
3 Ram Kumar 2
4 Krish K 1 

## CROSS JOIN

It will combine each rows from one table (meals) with every row from another table.(Drinks.)