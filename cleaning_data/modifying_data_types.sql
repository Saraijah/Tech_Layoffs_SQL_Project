
SET SQL_SAFE_UPDATES = 0;

USE tech_layoffs;
SELECT * FROM tech_layoff_combined_staging;

ALTER TABLE tech_layoff_combined_staging
MODIFY COLUMN Laid_Off INT,
MODIFY COLUMN Date_layoffs DATE,
MODIFY COLUMN Percentage DECIMAL(10,2),
MODIFY COLUMN Company_Size_before_Layoffs INT,
MODIFY COLUMN Company_Size_after_Layoffs INT,
MODIFY COLUMN Money_Raised_in__mil INT,
MODIFY COLUMN `Year` YEAR;

UPDATE tech_layoff_combined_staging
SET Money_Raised_in__mil = NULL
WHERE Money_Raised_in__mil = '';

SELECT Company_Size_after_Layoffs FROM 
tech_layoff_combined_staging;





select Money_Raised_in__mil
FROM tech_layoff_combined_staging;

UPDATE tech_layoff_combined_staging
SET Company_Size_after_Layoffs = NULL
WHERE Company_Size_after_Layoffs = '';





