## Retrieve a list with all female employees whose first name is Kellie.

use employees;

SELECT
    *
FROM
    employees
WHERE
    first_name = 'Kellie' AND gender = 'F'; 