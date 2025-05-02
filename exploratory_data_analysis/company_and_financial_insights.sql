-- A correlation between the amount of money raised by companies and the number of layoffs.
SELECT Company, SUM(Laid_Off) AS Total_Layoffs, AVG(Money_Raised_in__mil) AS Average_Money_Raised
FROM tech_layoff_combined_staging
GROUP BY Company
ORDER BY Average_Money_Raised DESC;




-- Does company size before layoffs compare to the layoffs' percentage?
SELECT Company, 
       SUM(Company_Size_before_Layoffs) AS Total_Company_Size_Before, 
       (SUM(Laid_Off) / SUM(Company_Size_before_Layoffs)) * 100 AS Layoff_Percentage
FROM tech_layoff_combined_staging
GROUP BY Company
ORDER BY Layoff_Percentage DESC;

-- How did the money raised by companies correlate with the percentage of layoffs
SELECT Company, 
	(SUM(Laid_Off)/SUM(Company_Size_before_Layoffs)) * 100 AS Layoff_Percentage,
    AVG(Money_Raised_in__mil) AS Average_Money_Raised
FROM tech_layoff_combined_staging
GROUP BY Company
ORDER BY Layoff_Percentage DESC;




