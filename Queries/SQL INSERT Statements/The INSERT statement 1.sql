## Select ten records from the “titles” table to get a better idea about its content.
# Then, in the same table, insert information about employee number 999903. State that he/she is a “Senior Engineer”, who has started working in this position on October 1st, 1997.
# At the end, sort the records from the “titles” table in descending order to check if you have successfully inserted the new record.


use employees;


SELECT
    *
FROM
    titles
LIMIT 10;

 
 
insert into titles
(
	emp_no,
    title,
    from_date
)
values
(
                999903,
    'Senior Engineer',
    '1997-10-01'
);



SELECT
    *
FROM
    titles
ORDER BY emp_no DESC;