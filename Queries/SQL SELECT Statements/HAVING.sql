## Select all employees whose average salary is higher than $120,000 per annum.


use employees;


SELECT
    emp_no, AVG(salary)
FROM
    salaries
GROUP BY emp_no
HAVING AVG(salary) > 120000
ORDER BY emp_no;