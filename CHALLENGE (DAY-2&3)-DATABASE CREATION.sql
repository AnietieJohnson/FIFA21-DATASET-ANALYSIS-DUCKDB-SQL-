--To load csv files
SELECT * FROM read_csv_auto('C:\Users\hp\Downloads\fifa21 raw data1.csv');
CREATE TABLE Fifa_21_RD1 AS SELECT * FROM read_csv_auto('C:\Users\hp\Downloads\fifa21 raw data1.csv');
SELECT * FROM read_csv_auto('C:\Users\hp\Downloads\fifa21_raw_data2.csv');
CREATE TABLE Fifa_21_RD2 AS SELECT * FROM read_csv_auto('C:\Users\hp\Downloads\fifa21_raw_data2.csv');
