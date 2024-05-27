## Retrieve a list with data about all female employees who were hired in the year 2000 or after.
# Extract a list with all employees’ salaries higher than $150,000 per annum.


use employees;


SELECT
    *
FROM
    employees
WHERE
    hire_date >= '2000-01-01'
        AND gender = 'F';



SELECT
    *
FROM
    salaries
WHERE
    salary > 150000;