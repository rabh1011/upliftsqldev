# Introduction to Index.

What is an index?

Does an index slow down updates on indexed columns?

How many indexes does MySQL Server  allow you to have on a table?

What command would you use to create an index?

Is there a difference between an index and a constraint?

What is the default ordering that will be created by an index (ascending or descending)?

How do you delete an index?


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

