# Beginning SQL Commands in MySQL.

What is the use of SELECT statement?

What is usually the first word in a SQL query?

What is the use of FROM word in SQL statement?

Does a SELECT statement require a FROM?

What is the use of WHERE clause?

What is the ORDER BY used for?

Does ORDER BY actually change the order of the data in the tables or does it just change the output?

What is the default order of an ORDER BY clause?

What kind of comparison operators can be used in a WHERE clause?

In a WHERE clause, do you need to enclose a text column in quotes? Do you need to enclose a numeric column in quotes?

Is a null value equal to anything? Can a space in a column be considered a null value? Why or why not?

Will COUNT(column) include columns with null values in its count?

What are column aliases? Why would you want to use column aliases? How can you embed blanks in column aliases?

What are table aliases?

What are table qualifiers? When should table qualifiers be used?

Are semicolons required at the end of SQL statements in SQL Server 2005?

When would you use the ROWCOUNT function versus using the WHERE clause?

What is a synonym? Why would you want to create a synonym?

Can a synonym name of a table be used instead of a table name in a SELECT statement?

Can a synonym of a table be used when you are trying to alter the definition of a table?

Can you type more than one query in the query editor screen at the same time?


# Practice

Create a database named "student_course" using command.

Create the following classes in Student, Department and Course tables.

Define various columns in tables.

Write a SQL query to view all the columns and rows in the Student table,Department and Course tables.

Display the data from  Student, Department and Course tables by using the simple form of the SELECT * statement.

Display the first five rows from each of these table.

Display the student name and student number of all students who are juniors (hint: class = 3).

Display the student names and numbers (from previous question) in descending order by name.

List the student number of all students who have grades of C or D.

What output will the following query produce?

SELECT COUNT(class) FROM Student WHERE class IS NULL

Use  BETWEEN and Not BETWEEN operators.