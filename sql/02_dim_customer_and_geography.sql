-- ========================================================================================
-- PROJECT:       Shop.com Marketing Analytics Report, Visualization and Strategic 
--                Stakeholders Recommendation
-- SCRIPT ROLE:   Data Cleaning (joining dim_customer and dim_geography) table
-- ======================================================================================== 

 SELECT *
 FROM customers;

  SELECT *
 FROM [dbo].[geography];

-- Joining dim_customer with dim_geography
SELECT 
c.CustomerID,
c.CustomerName,
c.Email,
c.Gender,
c.Age,
-- c.GeographyID,
g.Country,
g.City
FROM
[dbo].[customers] AS c
LEFT JOIN
--RIGHT JOIN
-- INNER JOIN
-- FULL OUTER JOIN
[dbo].[geography] AS g
ON 
c.GeographyID = g.GeographyID;
