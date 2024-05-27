## Retrieve a list with all employees whose first name is either Kellie or Aruna.


use employees;

SELECT
    *
FROM
    employees
WHERE
    first_name = 'Kellie' OR first_name = 'Aruna'; 