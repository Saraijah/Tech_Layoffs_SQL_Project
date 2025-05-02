ALTER TABLE tech_layoff_combined_staging ADD COLUMN temp_id INT AUTO_INCREMENT PRIMARY KEY;

CREATE TEMPORARY TABLE temp_backup AS
SELECT Company, ROW_NUMBER() OVER () AS row_num
FROM tech_layoffs_combined;


UPDATE tech_layoff_combined_staging t1
JOIN temp_backup t2
ON t1.temp_id = t2.row_num
SET t1.Company = t2.Company;

ALTER TABLE tech_layoff_combined_staging DROP COLUMN temp_id;

