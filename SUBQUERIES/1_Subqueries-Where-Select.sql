/*

Subqueries are synonymous with the name "nested queries".

Most common is one inside of WHERE statement. */


-- Simple example of Nested Query / or Subquery in the WHERE clause:

SELECT column1, column2
FROM table_name
WHERE column3 = 'Value'
AND column2 < (
    --subquery to calculate a value that is then used as a condition in the WHERE clause
    --based on the average of column 2 from the table
    SELECT avg(column2)
    from table_name
)

-- a second example is to have the subquery in the SELECT clause

SELECT DISTINCT column1,
--this is a subquery to develop the contents of a second column 
--where the result of the query is aliased as column name - "alias_of_subquery"
    (SELECT COUNT(*)
    FROM table_name1
    WHERE table_name2.column = table_name1.column) AS alias_of_subquery
FROM table_name2
--results in column1, and column 2 being "alias_of_subquery"
--this in essence creates two columns based on a condition where a 
--column value is the same in both tables


-- a third example is to have a subquery inside the FROM clause

SELECT DISTINCT table_1.column1, subquery.column2_alias
FROM table_1,
(--creating a second column from table_2 as a subquery
    SELECT column1, Max(column2) as column2_alias
    FROM table_name2
    GROUP BY column1
) AS subquery
WHERE table_1.column1 = subquery.column1
