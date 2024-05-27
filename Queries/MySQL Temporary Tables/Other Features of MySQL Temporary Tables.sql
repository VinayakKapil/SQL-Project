##  1:
# Create a temporary table called dates containing the following three columns:
# - one displaying the current date and time,
# - another one displaying two months earlier than the current date and time, and a
# - third column displaying two years later than the current date and time.


##  2:
# Write a query that, upon execution, allows you to check the result set contained in the dates temporary table you created in the previous exercise.


##  3:
# Create a query joining the result sets from the dates temporary table you created during the previous lecture with a new Common Table Expression (CTE) containing the same columns. Let all columns in the result set appear on the same row.


## 4:
# Again, create a query joining the result sets from the dates temporary table you created during the previous lecture with a new Common Table Expression (CTE) containing the same columns. This time, combine the two sets vertically.


##  5:
# Drop the male_max_salaries and dates temporary tables you recently created.


use employees;



##  1:
CREATE TEMPORARY TABLE dates
SELECT
    NOW(),
    DATE_SUB(NOW(), INTERVAL 2 MONTH) AS two_months_earlier,
    DATE_SUB(NOW(), INTERVAL -2 YEAR) AS two_years_later;



##  2:
SELECT
    *
FROM
    dates dates;



##  3:
WITH cte AS (SELECT
    NOW(),
    DATE_SUB(NOW(), INTERVAL 2 MONTH) AS cte_a_month_earlier,
    DATE_SUB(NOW(), INTERVAL -2 YEAR) AS cte_a_year_later)
SELECT * FROM dates d1 JOIN cte c;



##  4:
WITH cte AS (SELECT
    NOW(),
    DATE_SUB(NOW(), INTERVAL 1 MONTH) AS cte_a_month_earlier,
    DATE_SUB(NOW(), INTERVAL -1 YEAR) AS cte_a_year_later)
SELECT * FROM dates UNION SELECT * FROM cte;



##  5:
DROP TABLE IF EXISTS male_max_salaries;

DROP TABLE IF EXISTS dates;