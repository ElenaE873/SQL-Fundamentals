/* Joining a Table to Itself:

Self-joins: are used to compare values in a field to other values of the same field from 
within the same table. */


-- Basic Structure

-- Select fields with aliases
SELECT p1.column1,
       p1.column2 AS column2_table1_alias,
       p2.column1 AS column2_table1_alias
       --notice that we must alias the same column differently to be able to distinguish it
FROM table_name_1 AS p1
  INNER JOIN table_name_1 AS p2
  --table_name_1 is self joining but with a second alias
    ON  p1.column1 = p2.column1;
    -- here joinin on the same column within the table, by using the different aliases


--Adding a second condition via a calculation

SELECT p1.column1,
       p1.column2 AS column2_table1_alias,
       p2.column1 AS column2_table1_alias
FROM table_name_1 AS p1
  INNER JOIN table_name_1 AS p2
    ON  p1.column1 = p2.column1 
    AND p1.column3 = p2.column3 - number;
    --here the condition states that the join should occur where the column value is equal
    --another value that is equal that column value minus an arbitrary number 
    --we might want to check for
