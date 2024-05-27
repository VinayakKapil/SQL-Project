## Retrieve a list with all female employees whose first name is either Kellie or Aruna.


use employees;

SELECT
    *
FROM
    employees
WHERE
    gender = 'F' AND (first_name = 'Kellie' OR first_name = 'Aruna');