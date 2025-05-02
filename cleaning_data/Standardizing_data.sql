-- STANDARDIZING THE DATA 
SELECT * FROM tech_layoff_combined_staging;

SELECT DISTINCT(Company)
FROM tech_layoff_combined_staging
ORDER BY Company;


SELECT DISTINCT(Country) 
FROM  tech_layoff_combined_staging
ORDER BY 1;


UPDATE tech_layoff_combined_staging
SET Country = 'United Kingdom'
WHERE Country IN ('UK', 'uk');


SELECT Money_Raised_in__mil
FROM tech_layoff_combined_staging;

UPDATE tech_layoff_combined_staging
SET Money_Raised_in__mil = REPLACE(Money_Raised_in__mil, '$', '');


SELECT distinct(Industry) 
FROM tech_layoff_combined_staging
ORDER BY Industry;


UPDATE tech_layoff_combined_staging
SET Industry = 'Transportation'
WHERE Industry IN ('Transportâ€¦', 'Transportation', 'Transportion');

UPDATE tech_layoff_combined_staging
SET Industry = 'Infrastructure'
WHERE Industry IN ('Infrastrucâ€¦');

UPDATE tech_layoff_combined_staging
SET Location_HQ = 'Malma'
WHERE Location_HQ IN ('MalmÃ¶');

UPDATE tech_layoff_combined_staging
SET Location_HQ = 'Tel Aviv'
WHERE Location_HQ IN ('Tel Aviv', 'Tel Aviv');




-- Correcting Date Format 
SELECT Date_layoffs
FROM tech_layoff_combined_staging
WHERE Date_layoffs RLIKE '^[0-9]{2}\\.[0-9]{2}\\.[0-9]{2}$';

UPDATE tech_layoff_combined_staging
SET Date_layoffs = STR_TO_DATE(CONCAT('20', SUBSTRING(Date_layoffs, 7, 2), '-', SUBSTRING(Date_layoffs, 4, 2), '-', SUBSTRING(Date_layoffs, 1, 2)), '%Y-%m-%d')
WHERE Date_layoffs RLIKE '^[0-9]{2}\\.[0-9]{2}\\.[0-9]{2}$';

SELECT DISTINCT(Location_HQ)
FROM tech_layoff_combined_staging
ORDER BY 1;