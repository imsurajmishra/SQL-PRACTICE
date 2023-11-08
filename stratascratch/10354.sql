-- https://platform.stratascratch.com/coding/10354-most-profitable-companies?code_type=1

-- Solution 1
SELECT 
 company, 
 profits 
FROM 
 forbes_global_2010_2014 
ORDER BY
 profits
DESC  
LIMIT 3;

-- Solution 2
SELECT
 company,
 profit,
 rank
FROM(
  SELECT 
   company,
   profits,
   rank() OVER(ORDER BY profits DESC) as rank
  FROM
   forbes_global_2010_2014
) x
WHERE x.rank<=3