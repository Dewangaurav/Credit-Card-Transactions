# Credit_Card_Transactions_Analysis

### Introduction 
This is an SQL analysis project involves exploring a dataset containing credit card transaction details.

### Dataset

This SQL analysis project involves exploring a dataset containing credit card transaction details.The dataset includes information such as transaction dates, transaction amounts, card types, cities, expense types, and genders of cardholders.

[cc.xlsx](https://github.com/Dewangaurav/Credit_Card_Transactions_Analysis/files/15325621/cc.xlsx)

### Tools Used

Microsoft SQL Server


### Objective

The objective of this project is to gain insights into credit card spending patterns and behaviors, identify trends, and answer specific questions related to transaction data.

### Dataset Description

The dataset contains the following fields:

1. **transaction_id**: Unique identifier for each transaction.
2. **transaction_date**: Date of the transaction.
3. **amount**: Amount of the transaction.
4. **card_type**: Type of credit card used for the transaction (e.g., Gold, Silver, Platinum).
5. **city**: City where the transaction occurred.
6. **expense_type**: Type of expense (e.g., Grocery, Dining, Travel).
7. **gender**: Gender of the cardholder (e.g., Male, Female).

### Analysis Questions

The analysis covers several questions to understand the data and derive meaningful insights. Here are the main questions addressed in this project:

1. **Top 5 cities with highest spends and their percentage contribution of total credit card spends**: This query identifies the cities with the highest credit card spending and calculates their percentage contribution to the total spending.
  
2. **Highest spend month and amount spent in that month for each card type**: This query determines the highest spending month and the amount spent for each card type.
  
3. **Transaction details for each card type when it reaches a cumulative of 1000000 total spends**: This query provides transaction details for each card type when the cumulative spending reaches or exceeds 1,000,000.

4. **City with lowest percentage spend for gold card type**: This query finds the city with the lowest percentage spending for the gold card type.

5. **City, highest expense type, lowest expense type**: This query identifies the highest and lowest expense types for each city.

6. **Percentage contribution of spends by females for each expense type**: This query calculates the percentage contribution of spending by females for each expense type.

### Conclusion

Through this SQL analysis, we gained valuable insights into credit card transaction data. We identified top spending cities, analyzed spending trends across different card types and expense categories, and explored gender-based spending patterns. These insights can be used by financial institutions for targeted marketing, risk assessment, and decision-making processes.

**Note:** The analysis queries provided in this project are written in **Microsoft SQL** database and can be executed on any SQL database management system containing the credit card transaction dataset.

