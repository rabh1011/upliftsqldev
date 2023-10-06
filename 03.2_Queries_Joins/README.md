# Joins .

###What is a join? Why do you need a join?

###What is an INNER JOIN?

Inner join, where the two tables being joined must share at least one common column. The columns of the two tables being joined by the JOIN command are matched using an ON clause. SQL Server will actually translate the example JOIN statement to an unambiguous INNER JOIN form.

When inner-joining two tables, the JOIN returns rows from both tables only if there is a corresponding value in both tables as described by the ON clause column.


###Which clause[s] can be used in place of the JOIN in Server SQL?
ON

###What is the Cartesian product?
In a SQL statement, a Cartesian product is where every row of the first table in the FROM clause is joined with each and every row of the second table in the FROM clause. A Cartesian product is produced when the WHERE form of the JOIN is used without the WHERE.

SELECT * FROM table1, table2


###What would be the Cartesian product of a table with 15 rows and another table with 23 rows?
Which will have n*m rows (where n is the number of rows from the first relation, and m is the number of rows from the second relation).

###List some uses of the Cartesian product.
The simplest Cartesian product of two sets is a two-dimensional table or a cross-tabulation whose cells may be used to enter frequencies or to designate possibilities.

The Cartesian product is needed if we want a collection of all ordered n-tuples (rows with n columns) that can be formed so that they contain one element of the first set, one element of the second set and one element of the nth set.

What is an equi-join?

What is a non-equi-join? Give an example of an non-equi-join.

What is a self join? Give an example of a self join.

What is a LEFT OUTER JOIN?

What is a RIGHT OUTER JOIN?

What is a CROSS JOIN?

What is a FULL OUTER JOIN?

Does Server SQL allow the use of *= to perform outer joins?

What is the maximum number of rows that a self join can produce?

What would be the Cartesian product of the two sets {a,b,c} and {c,d,e}?

# Practice

1) Create a database named "student_course" using command.

Create the following classes in Student, Department and Course tables.

Create two tables, Stu(name, majorCode) and Major(majorCode, majorDesc).

A___ Display the Cartesian product (no WHERE clause) of the two tables. Use SELECT *.... How many rows did you get? How many rows will you always get when combining two tables with n and m rows in them (Cartesian product)?

b___ Display an equi-join of the Stu and Major tables on majorCode. First do this using the INNER JOIN, and then display the results using the equi-join with an appropriate WHERE clause. Use appropriate table aliases. How many rows did you get?

C___Display whatever you get if you leave off the column qualifiers (the aliases) on the equi-join in question 1b. (Note: This will give an error 
because of ambiguous column names.)

D___Use the COUNT(*) function instead of SELECT * in the query. Use COUNT to show the number of rows in the result set of the equi-join.

E___Display the name, majorCode, and majorDesc of all students regardless of whether or not they have a declared major (even if the major column is null). (Hint: You need to use a LEFT OUTER JOIN here if Stu is the first table in your equi-join query.)

f___Display a list of majorDescs available (even if the majorDesc does not have students yet) and the students in each of the majors. (Hint: You need to use a RIGHT OUTER JOIN here.)

g___Display the Cartesian product of the two tables using a CROSS JOIN.


2) Create two tables, T1(name, jobno) and T2(jobno, jobdesc). Let jobno be data type INT, and use appropriate data types for the other columns. Put three rows in T1 and two rows in T2. Give T1.jobno values 1, 2, 3 for the three rows: <..., 1>,<..., 2,>,<..., 3>, where ... represents any value you choose. Give T2.jobno the values 1, 2: <1,...>,<2,...>.

a___How many rows are in the equi-join (on jobno) of T1 and T2?

b___If the values of T2.jobno were <2,...>, <2,...> (with different jobdesc values), how many rows would you expect to get, and why? Why would the rows have to have different descriptions?

c___If the values of T2.jobno were 4, 5 as in <4,...>,<5,...>, how many rows would you expect to get?

d___If the values of T1.jobno were <..., 1>,<..., 1>,<..., 1> (with different names) and the values of T2.jobno were <1,...>,<1...> with different descriptions, how many rows would you expect to get?

e___If you have two tables, what is the number of rows you may expect from an equi-join operation (and with what conditions)? A Cartesian product?

f___The number of rows in an equi-join of two tables, whose sizes are m and n rows, is from ___ to ____ depending on these conditions: _________ .

