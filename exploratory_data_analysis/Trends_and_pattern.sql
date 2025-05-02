-- What were the layoffs trends during COVID-19 (2020-2021)
SELECT YEAR(Date_layoffs) AS `Year`, SUM(Laid_Off) AS Total_Layoffs
FROM tech_layoff_combined_staging
WHERE YEAR(Date_layoffs) BETWEEN 2020 AND 2021
GROUP BY `Year`
ORDER BY `Year`;

-- What was the average percentage of employees laid off for each company
SELECT Company,
(SUM(Laid_Off)/SUM(Company_Size_before_Layoffs)) * 100 AS Average_Layoff_percentage
FROM tech_layoff_combined_staging
GROUP BY Company
ORDER BY Average_Layoff_percentage DESC;

-- Yearly laid off trend

SELECT
	YEAR(Date_Layoffs) AS Year,
    AVG(Money_Raised_in__mil) AS Avg_Money_Raised,
    SUM(Laid_Off) As Total_Layoffs
    FROM tech_layoff_combined_staging
    GROUP BY YEAR(Date_Layoffs)
    ORDER BY Year;


-- How did layoffs impact company growth or shrinkage?

SELECT 
    Company, 
    AVG(Company_Size_before_Layoffs) AS Avg_Size_Before,
    AVG(Company_Size_after_Layoffs) AS Avg_Size_After,
    SUM(Laid_Off) AS Total_Laid_Off,
    ROUND(((AVG(Company_Size_after_Layoffs) - AVG(Company_Size_before_Layoffs)) 
   / AVG(Company_Size_before_Layoffs)) * 100, 2) AS Growth_or_Shrinkage_Percentage
FROM tech_layoffs_combined
WHERE Company_Size_before_Layoffs IS NOT NULL
GROUP BY Company
HAVING AVG(Company_Size_after_Layoffs) IS NOT NULL
ORDER BY Growth_or_Shrinkage_Percentage;


