# <p align="center" >30 Days DuckDB Challenge - Analyzing FIFA 21 Player Dataset 
![](https://github.com/AnietieJohnson/FIFA21-DATASET-ANALYSIS-DUCKDB-SQL-/blob/main/DATA%20FOR%20FOOTBALL.jpg)

## INTRODUCTION
Welcome to the **#30daysduckdbchallenge**, an exciting journey of data exploration and analysis using DuckDB, a high-performance analytical database designed for fast SQL queries on large datasets. In this project, I delve into the world of FIFA 21 player dataset, cleaning and transforming the dataset, performing insightful analysis, and drawing valuable conclusions.

## DATASET
I utilized two datasets, [Fifa_21_RD1](https://github.com/AnietieJohnson/FIFA21-DATASET-ANALYSIS-DUCKDB-SQL-/blob/main/fifa21%20raw%20data1.csv) and [Fifa_21_RD2](https://github.com/AnietieJohnson/FIFA21-DATASET-ANALYSIS-DUCKDB-SQL-/blob/main/fifa21_raw_data2.csv), each containing FIFA 21 player information. The goal is to extract meaningful insights from these datasets and showcase the power of DuckDB as an analytical tool.

## WEEK 1 
### CHALLENGE(DAY-1): GETTING STARTED
- I created an account with Motherduck : I've officially joined the Motherduck community and signed up for an account. It's a fantastic platform for data enthusiasts, and I'm looking forward to exploring it further, as this challenge continues
- Installed DuckDB using installation instructions and guide provided: DuckDB is now up and running smoothly on my local machine. Thanks to the detailed installation guide for my operating system, it was a breeze to set up. It's amazing to have a high-performance analytical database at my fingertips! 
![](https://github.com/AnietieJohnson/FIFA21-DATASET-ANALYSIS-DUCKDB-SQL-/blob/main/duckdb%20profile.png)

## WEEK 2 
### CHALLENGE (DAY-2&3): DATABASE CREATION
1. I Created a DUCKDB database named **_CHALLENGE_**
2. Loaded **Fifa_21_RD1 and Fifa_21_RD2** dataset
3. I created an access link to allow individuals in the Motherduck community view my database.

**_Syntax for DAY-2&3 can be found_** [here](https://github.com/AnietieJohnson/FIFA21-DATASET-ANALYSIS-DUCKDB-SQL-/blob/main/CHALLENGE%20(DAY-2%263)-DATABASE%20CREATION.sql)

![](https://github.com/AnietieJohnson/FIFA21-DATASET-ANALYSIS-DUCKDB-SQL-/blob/main/Duckdb%20%20database.png)

## CHALLENGE (DAY-4&5): DATA INSPECTION AND CLEANING : 
#### Working with Two Connected Fifa Datasets:
- Converting Height and Weight Columns from VARCHAR to INTEGER:
The 'Height' and 'Weight' columns were my first challenge. I meticulously ensured that they are now presented in a numerical format, making them ready for efficient analysis. For 'Height,' I converted all values to centimeters, harmonizing units that were initially mixed between 'ft' and 'cm.' Using SUBSTRING and multiplying by the conversion factor, I made all values uniform. I then changed the data type from VARCHAR to INTEGER using CAST. The same methodology was applied to clean the 'Weight' column, ensuring all values are consistently in 'lbs' format. I removed 'lbs' using SUBSTRING, then i was able to change the data type from VARCHAR to INTEGER usong ALTER statement, thereby enabling further calculations. This task reiterated the importance of thorough data evaluation before embarking on the cleaning journey.

- Converting 'Value,' 'Wage,' and 'Release Clause' from VARCHAR to INTEGER: 
The 'Value' column presented a unique challenge with values like '€100M' (100 million), '€10K' (10,000), and even '€10.5M.' Skillfully, I stripped away the symbols ('€'), units ('M' and 'K'), and even decimal points using a combination of CASE statements, REPLACE functions, and SUBSTRING operations. This meticulous process unveiled the true numerical values, and I converted them to integers. Similarly, 'Wage' and 'Release Clause' are now radiant with accurate values, as I removed 'K' for thousands and 'M' for millions. The data is now crystal clear for financial analysis.

- Handling 'Star' Characters: 
I removed those pesky 'Star' characters from the columns where they appeared, ensuring the data is now pristine in a clean, numerical format. Insights are now poised for discovery.

 **_The syntax for DAY-4&5_** -: [Cleaning_process_FIFA_21_RD1](https://github.com/AnietieJohnson/FIFA21-DATASET-ANALYSIS-DUCKDB-SQL-/blob/main/CHALLENGE%20(DAY-4%265)-DATA%20%20CLEANING%20For%20FIFA_21_RD1.sql) and [Cleaning_process_FIFA_21_RD2](https://github.com/AnietieJohnson/FIFA21-DATASET-ANALYSIS-DUCKDB-SQL-/blob/main/CHALLENGE%20(DAY-4%265)-DATA%20CLEANING%20for%20fifa_21_RD2.sql)

To confirm that all my data type has been updated to integer I used the syntax below
```
SELECT COLUMN_NAME, DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME ='Fifa_21_RD1';
```
![](https://github.com/AnietieJohnson/FIFA21-DATASET-ANALYSIS-DUCKDB-SQL-/blob/main/datatype%20change.png)

## WEEK 3 
### CHALLENGE (DAY-6&7): ANALYSIS

**USING  Fifa_21_RD1 AS DATASET FOR ANALYSIS**
Question 1: I Identified players with high value but receiving relatively low wages by using the average of both as the threshold. Leveraged the power of AVG() function and WHERE clause.

Question 2: I Determined the count of players available in the dataset for each position, showcasing the importance of the COUNT() function.

Question 3: Discovered the club with the largest representation of players in the dataset, utilizing the COUNT() function and GROUP clause to identify the club with the most extensive player diversity. 

Question 4: Listed the top 10 players with the highest Overall (OVA) and Potential (POT) ratings, spotlighting the star players using the MAX() function. These are the football galaxy's brightest. 

 **_The syntax for DAY-6&7 can be found_** [here](https://github.com/AnietieJohnson/FIFA21-DATASET-ANALYSIS-DUCKDB-SQL-/blob/main/CHALLENGE%20(DAY-6%267)-ANALYSIS.sql)


### CHALLENGE (DAY-8&9): ANALYSIS CONTINUED
1. Finding Players with the Highest OVA POT within Each Club :
I used DENSE_RANK() to identify top players in each club based on Overall (OVA) and Potential (POT) ratings. A great insight for clubs in player selection.

2. Calculating the Average OVA for Players Under 25 and Over 30 :
I used case statements to calculate average OVA ratings for players in different age groups, providing valuable insights into player performance.

3. Listing Players with the Same Age within Each Club: 
By aggregating players with the same age within each club, I uncovered unique patterns in player composition.

4. Finding the Player with the Highest POT for Each Nationality :
By ranking players by Potential (POT) within their nationality, we can spot the rising stars from different countries.

5. Ranking Players by OVA in Descending Order Within Clubs:
A detailed analysis of player rankings within their respective clubs can assist in talent scouting and club management.

 **_The syntax for DAY-8&9 can be found_** [here](https://github.com/AnietieJohnson/FIFA21-DATASET-ANALYSIS-DUCKDB-SQL-/blob/main/CHALLENGE%20(DAY-6%267)-ANALYSIS.sql)

 ## CONCLUSION
Data analysis has become increasingly important in the field of football for a variety of reasons. It is used at various levels of the game, from individual player performance analysis to team strategy development and fan engagement. The **#30daysduckdbchallenge** has been an incredible journey of data analysis. We've not only polished our SQL skills but also demonstrated the power of DuckDB in handling real-world data challenges. The Challenge continues and I cannot wait to explore the next phase.

## REFERENCE
Image Title: Leveraging Data GTPE

Source: Google Images. 

URL: https://images.app.goo.gl/CSfyLSQEMHUa3jcs9

Accessed Date: November 2, 2023
