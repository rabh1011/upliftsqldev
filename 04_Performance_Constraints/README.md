# Introduction to Indexes and Constraints on Tables

What is an index?

Does an index slow down updates on indexed columns?

What is a constraint?

How many indexes does MySQL Server  allow you to have on a table?

What command would you use to create an index?

Is there a difference between an index and a constraint?

What is the default ordering that will be created by an index (ascending or descending)?

When can the UNIQUE option be used?

What does the IGNORE NULL option do?

How do you delete an index?

What does the NOT NULL constraint do?

What command must you use to include the NOT NULL constraint after a table has already been created?

When a PRIMARY KEY constraint is included in a table, what other constraints does this imply?

What is a concatenated primary key?

How are the UNIQUE and PRIMARY KEY constraints different?

What is a referential integrity constraint? What two keys does the referential integrity constraint usually include?

What is a foreign key?


# Practice

To test choices of data types, create a table with various data types like this:

CREATE TABLE Test3
  (name                VARCHAR(20),
   ssn                 CHAR(9),
   dept_number         INTEGER,
   acct_balance        SMALLMONEY)



Then insert values into the table to see what will and will not be accepted. The following data may or may not be acceptable. You are welcome to try other choices.

'xx','yy',2,5
'xx','yyy',2000000000,5
'xx','yyyy',2,1234567.89



Create an index of ssn in ascending order of ssn. Try to insert some new data in the ssn column. Does your ssn column take nulls?

Does your ssn column take duplicates? If so, how can you prevent this column from taking duplicates?

Include a NOT NULL constraint on the ssn column. Now try to insert some new data in the ssn column with nulls in the ssn column. What happens?

With this NOT NULL constraint, is it necessary to include the PRIMARY KEY constraint? Why or why not? Now include the PRIMARY KEY constraint and seewhether there is any difference in the types of values it accepts.

Include some data with null values in the dept_number and acct_balance columns. Now include the NOT NULL constraint in the acct_balance column. What happens?

Include the NOT NULL constraint in the acct_balance column. What happens?

