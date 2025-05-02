-- What Percnetage of employees were laid off from each company
SELECT 
    Company,
    YEAR(Date_layoffs) AS Year,
    SUM(Laid_Off) AS Total_Laid_Off,
    ROUND(AVG((Laid_Off / Company_Size_before_Layoffs) * 100), 2) AS Avg_Layoff_Percentage
FROM tech_layoff_combined_staging
WHERE Company_Size_before_Layoffs IS NOT NULL
GROUP BY Company, YEAR(Date_layoffs)
ORDER BY Company, Year;
