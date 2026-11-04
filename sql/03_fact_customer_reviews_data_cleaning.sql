-- ========================================================================================
-- PROJECT:       Shop.com Marketing Analytics Report, Visualization and Strategic 
--                Stakeholders Recommendation
-- SCRIPT ROLE:   Data Cleaning (Replacing double space to single space)
-- ========================================================================================

-- confirming currently selected (or active) database for the current session.
SELECT DB_NAME() AS [CurrentDatabase];

-- checking all tables in the current active database
SELECT name AS [TableName] 
FROM sys.tables 
ORDER BY name;


SELECT TOP 3 *
FROM dbo.customer_reviews;

-- Query to clean whitespace issues in the ReviewText column

SELECT 
    ReviewID, 
    CustomerID,
    ProductID, 
    ReviewDate,
    Rating,  
    -- Cleans up the ReviewText by replacing double spaces with single spaces to ensure the text is more readable and standardized
    REPLACE(ReviewText, '  ', ' ') AS ReviewText
FROM 
    dbo.customer_reviews;  
