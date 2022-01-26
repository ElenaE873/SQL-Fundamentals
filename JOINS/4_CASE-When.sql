
-- Basic Structure
SELECT *
    -- First case
    CASE WHEN column1 > 2000000 THEN 'large'
        -- Second case
        WHEN column1 > 350000 THEN 'medium'
        -- Else clause + end
        ELSE 'small' END
        -- Alias name
        AS column1_alias
FROM table_name;