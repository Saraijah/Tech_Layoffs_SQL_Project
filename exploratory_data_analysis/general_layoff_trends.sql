USE tech_layoffs;

-- How many layoff ocurred each year between 2020 and 2025
SELECT YEAR(Date_layoffs) AS `Year`, SUM(Laid_off) AS Total_Layoffs
FROM tech_layoff_combined_staging
GROUP BY YEAR(Date_layoffs)
ORDER BY `Year`;



-- Top 20 of companies that had the most layoffs

SELECT Company, Sum(Laid_off) AS Total_layoffs
FROM tech_layoff_combined_staging
GROUP BY Company
ORDER BY Total_layoffS DESC
LIMIT 20;
-- Which Industry had the most layoffs

SELECT Industry, SUM(Laid_off) AS Total_layoffs
FROM tech_layoff_combined_staging
GROUP BY Industry
ORDER BY Total_layoffs DESC
LIMIT 10;

-- Which Industry had the least layoffs
SELECT Industry, SUM(Laid_off) AS Total_layoffs
FROM tech_layoff_combined_staging
GROUP BY Industry
ORDER BY Total_layoffs
LIMIT 10;

-- What is the geographical distribution of layoffs (by country, region, or headquarters)

SELECT Country, SUM(Laid_Off) AS Total_layoffs
FROM tech_layoff_combined_staging
GROUP BY Country
ORDER BY Total_layoffs DESC;

-- Total layoff of company by year and Total Layoffs
SELECT year(Date_layoffs) AS `Year`,Company, Sum(Laid_off) AS Total_layoffs
FROM tech_layoff_combined_staging
GROUP BY Company, `Year`
ORDER  BY `Year` DESC
LIMIT 20;
