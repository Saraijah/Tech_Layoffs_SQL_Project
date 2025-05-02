-- Deleting duplicates
USE tech_layoffs;
SET SQL_SAFE_UPDATES = 0;
SELECT * FROM tech_layoff_combined_staging;

WITH dupes AS(

SELECT*,
ROW_NUMBER() OVER(PARTITION BY Company, Location_HQ, Country, Laid_Off, Date_layoffs, Percentage, Company_Size_before_Layoffs, 
Company_Size_after_Layoffs, Industry, Stage, Money_Raised_in__mil ORDER BY Company  ) AS row_num
FROM tech_layoff_combined_staging
)

SELECT * FROM dupes 
WHERE row_num > 1;


CREATE TABLE `tech_layoff_combined_staging2` (
  `Company` varchar(255) DEFAULT NULL,
  `Location_HQ` varchar(255) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `Laid_Off` int DEFAULT NULL,
  `Date_layoffs` date DEFAULT NULL,
  `Percentage` decimal(10,2) DEFAULT NULL,
  `Company_Size_before_Layoffs` int DEFAULT NULL,
  `Company_Size_after_Layoffs` int DEFAULT NULL,
  `Industry` varchar(255) DEFAULT NULL,
  `Stage` varchar(100) DEFAULT NULL,
  `Money_Raised_in__mil` int DEFAULT NULL,
  `row_num` int
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


INSERT INTO tech_layoff_combined_staging2
SELECT*,
ROW_NUMBER() OVER(PARTITION BY Company, Location_HQ, Country, Laid_Off, Date_layoffs, Percentage, Company_Size_before_Layoffs, 
Company_Size_after_Layoffs, Industry, Stage, Money_Raised_in__mil ORDER BY Company  ) AS row_num
FROM tech_layoff_combined_staging;

DELETE FROM tech_layoff_combined_staging2 
WHERE row_num > 1;

SELECT * FROM tech_layoff_combined_staging2;

ALTER TABLE tech_layoff_combined_staging2
DROP COLUMN row_num;

ALTER TABLE tech_layoff_combined_staging2
ADD COLUMN Id INT auto_increment PRIMARY KEY FIRST;




