# Introduction to Group By and Aggregation.

What do aggregate functions do?

How does the GROUP BY clause work?

What is the difference between a GROUP BY and ORDER BY?

What is the HAVING clause used for?

Can the WHERE clause always be considered a substitute for the HAVING clause? Why or why not?

Will nulls in grouped columns be included in a result set?

How do aggregate functions treat nulls?

Does the sequence of the columns in a GROUP BY clause have an effect on the end result?

When would it not make sense to use the GROUP BY and DISTINCT functions together?

Is GROUP BY affected by nulls?

Which comes first in a SELECT statement, an ORDER BY or GROUP BY? Why?

The GROUP BY and ________________ clauses are used together.


# Practice

Create a table called Employees with a name, a salary and job title. Include exactly six rows. Make the salary null in one row, the job title null 
in another, and both the salary and the job title in another. 

a___Display the table.

b___Display count, sum, maximum, minimum, and average salary.

c___Display count, sum, maximum, minimum, and average salary, counting salary as 0 if no salary is listed.

d___Display the average salary grouped by job title on the table as is.

e___Display the average salary grouped by job title when null salary is counted as 0.

f___Display the average salary grouped by job title when salary is counted as 0 if it is null and include a value for "no job title."

