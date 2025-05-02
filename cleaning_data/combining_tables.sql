-- Joining Both Tables

CREATE TABLE tech_layoffs_combined(
    Nr VARCHAR(50),
    Company VARCHAR(255),
    Location_HQ VARCHAR(255),
    Country VARCHAR(100),
    Continent VARCHAR(100),
    Laid_Off VARCHAR(50),
    Date_layoffs VARCHAR(50),
    Percentage VARCHAR(50),
    Company_Size_before_Layoffs VARCHAR(50),
    Company_Size_after_layoffs VARCHAR(50),
    Industry VARCHAR(255),
    Stage VARCHAR(100),
    Money_Raised_in__mil VARCHAR(50),
    Year VARCHAR(10),
    latitude VARCHAR(50),
    longitude VARCHAR(50)
);

SELECT * FROM tech_layoffs_combined;


INSERT INTO tech_layoffs_combined(Nr, Company, Location_HQ, Country, 
Continent, Laid_Off, Date_layoffs, Percentage, Company_Size_before_Layoffs, 
Company_Size_after_layoffs, Industry, Stage, Money_Raised_in__mil, `Year`, latitude, longitude)
SELECT `tech_layoffs_q1_staging`.`Nr.` AS `Nr`,
    `tech_layoffs_q1_staging`.`Company`,
    `tech_layoffs_q1_staging`.`Location_HQ`,
    `tech_layoffs_q1_staging`.`Country`,
    `tech_layoffs_q1_staging`.`Continent`,
    `tech_layoffs_q1_staging`.`Laid_Off`,
    `tech_layoffs_q1_staging`.`Date_layoffs`,
    `tech_layoffs_q1_staging`.`Percentage`,
    `tech_layoffs_q1_staging`.`Company_Size_before_Layoffs`,
    `tech_layoffs_q1_staging`.`Company_Size_after_layoffs`,
    `tech_layoffs_q1_staging`.`Industry`,
    `tech_layoffs_q1_staging`.`Stage`,
    `tech_layoffs_q1_staging`.`Money_Raised_in_$_mil` AS Money_Raised_in__mil,
    `tech_layoffs_q1_staging`.`Year`,
    `tech_layoffs_q1_staging`.`lat`AS `latitude` ,
    `tech_layoffs_q1_staging`.`lng` AS `longitude`
FROM `tech_layoffs`.`tech_layoffs_q1_staging`

UNION ALL

SELECT `tech_layoffs_q2_staging`.`ï»¿Nr` AS `Nr`,
    `tech_layoffs_q2_staging`.`Company` ,
    `tech_layoffs_q2_staging`.`Location_HQ`,
    `tech_layoffs_q2_staging`.`Country`,
    `tech_layoffs_q2_staging`.`Continent`,
    `tech_layoffs_q2_staging`.`Laid_Off`,
    `tech_layoffs_q2_staging`.`Date_layoffs`,
    `tech_layoffs_q2_staging`.`Percentage`,
    `tech_layoffs_q2_staging`.`Company_Size_before_Layoffs`,
    `tech_layoffs_q2_staging`.`Company_Size_after_layoffs`,
    `tech_layoffs_q2_staging`.`Industry`,
    `tech_layoffs_q2_staging`.`Stage`,
    `tech_layoffs_q2_staging`.`Money_Raised_in__mil`,
    `tech_layoffs_q2_staging`.`Year`,
    `tech_layoffs_q2_staging`.`latitude` ,
    `tech_layoffs_q2_staging`.`longitude`
FROM `tech_layoffs`.`tech_layoffs_q2_staging`;

-- counting the total number of rows in tech_layoffs_comibined

SELECT COUNT(*) FROM tech_layoffs_combined;






