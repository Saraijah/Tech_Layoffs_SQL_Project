USE tech_layoffs;
-- Renaming table
RENAME TABLE tech_layoffs_til_q1_2024 TO tech_layoffs_q1;
RENAME TABLE tech_layoffs_til_q4_2024 TO tech_layoffs_q2;

-- Duplicating Tables
CREATE TABLE tech_layoffs_q1_staging
LIKE tech_layoffs_q1;

INSERT tech_layoffs_q1_staging 
SELECT * FROM tech_layoffs_q1;

SELECT * FROM  tech_layoffs_q2;


CREATE TABLE tech_layoffs_q2_staging
LIKE tech_layoffs_q2;

INSERT tech_layoffs_q2_staging
SELECT * FROM tech_layoffs_q2;


CREATE TABLE tech_layoff_location_staging
LIKE tech_layoffs_location;

INSERT tech_layoff_location_staging
SELECT * FROM tech_layoffs_location;


-- Counting the columns 
SELECT COUNT(*) AS column_count
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'tech_layoffs_q1_staging'
  AND TABLE_SCHEMA = 'tech_layoffs';
  
SELECT COUNT(*) AS column_count
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'tech_layoffs_q2_staging'
  AND TABLE_SCHEMA = 'tech_layoffs';

