/* Full-Joins will capture all records from the left table and the right table.*/

-- Basic Structure

SELECT *
FROM left_table
FULL JOIN right_table
USING (id);

/* contains:

a - All the matches between the two tables
b - AND all the non-matches between the two tables
    -1- any left_table rows that do not have matching values to the right_table
    -2- any right_table rows that do not have any matching values to the left_table */