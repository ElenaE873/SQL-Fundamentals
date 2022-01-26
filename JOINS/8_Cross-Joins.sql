/* Cross - Joins:

- create all possible combinations of two tables */

-- Basic Structure

SELECT *
FROM left_table AS c        
  CROSS JOIN right_table AS l
  WHERE c.column1 LIKE 'string%';