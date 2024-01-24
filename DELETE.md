1. Delete
    - Syntax
        - DELETE FROM table_name where condition;
    - Example
        - DELETE FROM state where population<5;

2. Delete a specific row 
    - DELETE FROM employees where employee_id=101;

3. Delete a all rows of table 
    - DELETE FROM employees;

4. Delete a rows based on multiple conditions 
    - DELETE FROM employees WHERE city="bangalore" and salary<20000;

5. Delete a rows with a NULL values in a specific column.
    - DELETE FROM employees WHERE description IS NULL;

6. Delete rows order than a certain date:
    - DELETE FROM events WHERE eventdate <'2023-09-17';

7. DELETE from employees
Where id NOT IN(Seletc min(salary) from employees)