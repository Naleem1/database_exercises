USE employees;

SHOW TABLES;

SELECT DISTINCT first_name FROM employees WHERE first_name LIKE '%sus%';

SELECT emp_no, first_name, last_name FROM employees WHERE emp_no BETWEEN 10026 AND 10082;

SELECT emp_no, first_name, last_name FROM employees WHERE last_name IN ('Herber', 'Dredge', 'Lipner', 'Baek');

SELECT emp_no, first_name, last_name FROM employees
WHERE emp_no < 20000
    AND last_name IN ('Herber', 'Baek')
   OR first_name = 'Shridhar';

SELECT * FROM salaries WHERE salary NOT BETWEEN 50000 AND 100000;

# order by

SELECT * FROM employees WHERE birth_date LIKE '1954-01%' ORDER BY birth_date;

SELECT * FROM employees WHERE birth_date LIKE '1954-01%' ORDER BY birth_date, last_name;

SELECT * FROM employees WHERE birth_date LIKE '1954-01%' ORDER BY birth_date, last_name LIMIT 20 OFFSET 30;

# Functions

SELECT CONCAT(first_name, ' ', last_name) FROM employees WHERE first_name = 'Maya';

SELECT DAYOFMONTH(hire_date) FROM employees WHERE first_name  = 'Maya';

SELECT DATEDIFF(NOW(), hire_date)/365 FROM employees LIMIT 50;

SELECT MINUTE(NOW());

SELECT SECOND(NOW());

# Group By and Aggregate Functions

# Group By will combine duplicates into one value for each group
# It will consolidate rows based on a common column

SELECT last_name FROM employees GROUP BY last_name;

SELECT COUNT(first_name) FROM employees;

SELECT last_name, COUNT(first_name) FROM employees GROUP BY last_name ORDER BY last_name;

SELECT gender, COUNT(first_name) FROM employees GROUP BY gender;

SELECT MIN(DATEDIFF(hire_date, birth_date)) / 365 FROM employees;

SELECT MAX(DATEDIFF(hire_date, birth_date)) / 365 FROM employees;

SELECT AVG(DATEDIFF(hire_date, birth_date)) / 365 FROM employees;