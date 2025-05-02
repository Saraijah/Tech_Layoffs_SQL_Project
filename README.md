# 📉 Tech Layoffs SQL Analysis (2020–2025)
This project explores mass layoffs in the tech industry from 2020 to 2025 using SQL. The data was sourced from Kaggle and cleaned to remove duplicates, fix formatting issues, and standardize values. The goal is to uncover layoff trends by year, company, industry, and region and provide insights into how company size and funding relate to layoffs.

##  Data Cleaning Steps
- Standardized column names and values (e.g., Company, Location, Country).
- Removed duplicate records.
- Recovered missing/deleted columns.
- Modified data types (e.g., date fields, numeric values).
- Combined multiple tables using `UNION`.
- Dropped irrelevant or duplicate columns/tables.
  
### 🖼️ Screenshots of Data Cleaning Steps


<details>
 <summary>📸 Click to view screenshots</summary>
 
 ### 🔁 Removing Duplicates
 <img src="https://github.com/user-attachments/assets/5ffbb354-d65b-4ec8-b9db-145a6fcb7902" alt="Removing Duplicates" width="600" />

#### 🧱 Standardizing Data
<img src="https://github.com/user-attachments/assets/3ad0d86b-e714-428a-846f-edbb1c724cc5" alt="Standardizing Data" width="600" />

</details>

## 📊 Exploratory Data Analysis (EDA)
The following key questions were explored using SQL:

### 1. Layoffs Over Time
- Tracked the number of layoffs by year.

<img width="311" alt="yearly_laid_off_trend" src="https://github.com/user-attachments/assets/a970f11e-5cfd-43bb-87c2-9ee17d613749" />

### 2. Industries Most Affected
- Identified the top 10 industries with the **highest** layoffs:

<img width="239" alt="industry_most_laid_off" src="https://github.com/user-attachments/assets/0867415f-f738-4b71-91c5-9780fa9ae6d4" />

- Also identified the industries with the **lowest** layoffs:
  
<img width="221" alt="least_industry_affected" src="https://github.com/user-attachments/assets/5731be1e-1779-405f-9ce5-be2fec8f6654" />

### 3. Layoffs by Country
- Analyzed the top 10 countries most affected by tech layoffs.
<img width="362" alt="Countries_that_where_affected_the_most" src="https://github.com/user-attachments/assets/129c74d8-5256-4362-bb9c-47921327a57f" />


### 4. Percentage of Layoff based on Company
- Analyzed the percentage share of total layoffs by the top 10 companies, based on the highest number of employees laid off.
<img width="355" alt="percentage_off_layoffs" src="https://github.com/user-attachments/assets/7fe474d1-4d40-471a-b22a-78428b208ab0" />

## 🛠 Tools Used

- **MySQL** for querying
- **GitHub Desktop** for version control
- **Kaggle** for data source
- **Excel** (future step) for visual support

## 🧠 Key Learnings

- Practiced cleaning real-world messy datasets
- Gained experience joining, filtering, and aggregating SQL data
- Used visual screenshots to support SQL queries and explain insights

 ## 🚀 Future Work

- Add Excel visualizations
- Upload dashboard with percentage breakdowns
- Compare funding with attrition rates over time

### 📚 Created by Saraijah Porth  
Feel free to reach out for any questions or collaboration opportunities!

[LinkedIn Profile](https://www.linkedin.com/in/saraijah-porth-0863a3265/)

