# Introducing Set Operations (Union, Union ALL, In and Not IN, Difference,Union vs Join, Join vs subqueries)

What are the major differences between the UNION operation and the JOIN operation?

What is the major difference between the UNION and the UNION ALL?

What is the maximum number of rows that can result from a UNION of two tablesone with 5 rows and the other with 6 rows?

What is the maximum number of rows that can result from a JOIN of two tablesone with 5 rows and the other with 6 rows?

How can a UNION be used to implement an outer join? Explain.

Do you need the same number of columns to perform a union?

Do you need the same data types to perform a union?

Do you need the same number of columns to perform a join?What is the maximum number of rows that can result from a INTERSECT of two tablesone with rows and the other with 6 rows?

Do you need the same number of columns to perform an INTERSECT operation?

Do you need the same data types to perform an INTERSECT operation?

# Practice

Create two tables, Table_1(A, B) and Table_2(A, B,C,D).

Try the following statements and note the results:

    SELECT * FROM Table1 UNION SELECT * FROM Table2
    SELECT * FROM Table1 UNION SELECT A,B FROM Table2
    SELECT * FROM Table1 UNION SELECT B,A FROM Table1
    SELECT * FROM Table1 UNION SELECT A,C FROM Table2
    SELECT * FROM Table1 UNION SELECT A,D FROM Table2
    CREATE VIEW viewx AS
    SELECT A,B
    FROM Table2
    SELECT *
    FROM Table1
      UNION
    SELECT *
    FROM viewx

