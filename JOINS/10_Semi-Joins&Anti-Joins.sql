/* reminder:

There are 6 Additive Joins, ie. they add columns to the original left_table:

1 - Inner Join
2 - Self Join
3 - Left Join
4 - Right Join
5 - Full Join
6 - Cross Join   */

/* the following 2 joins uses the right_table to determine which records to keep
from the left_table 

these two joins can be used similar to a where clause dependent 
on the values of the second table

*/


-- Basic Structure - SEMI-JOIN

SELECT *
FROM left_table
WHERE column IN (
    --subquery
    SELECT column
    FROM right_table
    WHERE condition
);

--chooses records WHERE the condition in the second table is met

-- Basic Structure - ANTI-JOIN

SELECT *
FROM left_table
WHERE column LIKE '%string'
AND column NOT IN ( -- declaring the ANTI-JOIN
    SELECT column
    FROM right_table
    WHERE condition
)