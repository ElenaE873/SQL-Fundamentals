/* An INNER JOIN only includes records in which the "unique key" 
is in both tables that are being joined.*/

--Basic Inner Join Structure

SELECT * -- all columns
FROM table_name_1 AS T1 --the "left-table"
    INNER JOIN table_name2 AS T2 --the "right-table"
        ON T1.key_field = T2.key_field;  -- where the key values match


--Other Variations

    -- Select name fields (with alias) 
    SELECT table_name_1.column1 AS column_1_alias, 
    table_name2.column2 AS column_2_alias, column_3
    FROM table_name_1
    INNER JOIN table_name2
        ON table_name_1.key = table_name2.key;

-- Multiple Inner Joins

        -- Select fields
        SELECT c.column1, column2, column3, e.column4, column5, column6
        -- not that any columns that are found in more than one table must be 
        -- preceded with alias of the table
        -- to specify from which table that common column name is being pulled from.
        FROM table_name_1 AS c
        INNER JOIN table_name2 AS p
            ON c.key = p.key
        INNER JOIN table_name3 AS e
            ON c.key = e.key and e.column = p.column; 
            -- a second condition has been entered for the join to occur
            -- both the key must match and the columns values must match for the join to occur

