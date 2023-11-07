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
3. I created an access link to allow individuals in the Motherduck community view my database

```
SELECT * FROM read_csv_auto('C:\Users\hp\Downloads\fifa21 raw data1.csv');

CREATE TABLE Fifa_21_RD1 AS SELECT * FROM read_csv_auto('C:\Users\hp\Downloads\fifa21 raw data1.csv');

SELECT * FROM read_csv_auto('C:\Users\hp\Downloads\fifa21_raw_data2.csv');

CREATE TABLE Fifa_21_RD2 AS SELECT * FROM read_csv_auto('C:\Users\hp\Downloads\fifa21_raw_data2.csv');
```
![](https://github.com/AnietieJohnson/FIFA21-DATASET-ANALYSIS-DUCKDB-SQL-/blob/main/Duckdb%20%20database.png)
