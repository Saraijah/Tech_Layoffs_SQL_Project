CREATE TABLE tech_layoff_combined_staging
LIKE tech_layoffs_combined;

-- CREATING Duplicated table 
INSERT tech_layoff_combined_staging
SELECT * FROM tech_layoffs_combined;

SELECT * FROM tech_layoff_combined_staging
ORDER BY Company;