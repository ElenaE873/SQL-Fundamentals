/* When the key field you are seeking to join on is the same name in both tables,
you can use a "USING" clause, instead of the on-clause.*/


-- Basic Structure
SELECT c.column1 AS column_alias, column2, l.column3 AS column3_alias, column4
  FROM table_name_1 AS c
  INNER JOIN table_name_2 AS l
    -- Match using code
    USING(code_field);