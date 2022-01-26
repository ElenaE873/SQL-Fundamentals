/*

Union: 
- includes every record in both tables
- BUT does not double count those that are in both tables

Union ALL:
- includes every record in both tables
- AND double counts those that are in both tables

Intersect:
- Includes only those records that occur in both tables

Except:
- Includes records in one table but not the other

*/

-- Basic Structure - UNION

SELECT *
FROM table_name_1
UNION 
SELECT *
FROM table_name_2


-- Basic Structure - INTERSECT
SELECT *
FROM left_table
INTERSECT  
SELECT *
FROM right_table;

-- Basic Structiors - EXCEPT

SELECT *
FROM left_table
EXCEPT  
SELECT *
FROM right_table;