#  Bank Analytics.
# 🏦 Bank Analytics Dashboard  ## 📌 Project Overview  The **Bank Analytics Dashboard** is a data analytics project focused on analyzing banking data to help stakeholders monitor **bank performance, customer behavior, loan trends, repayment performance, and financial risks**.
# 🏦 Bank Analytics Dashboard

# 👨‍💻 Project By 

  **Mounika Akki**

## 💎 Project Overview

The Bank Data Analytics Project focuses on analyzing banking and loan data to help stakeholders understand bank performance, customer borrowing patterns, loan repayment behavior, and credit risk.
The project uses SQL for data analysis and explores banking KPIs through Excel, Tableau, and Power BI dashboards. It includes data cleaning, calculated fields, loan performance analysis, and visual reporting to support data-driven decision-making.

## 💎 Project Objectives

Analyze banking and loan data to understand overall business performance.
Calculate key performance indicators (KPIs).
Monitor loan funding, collections, and interest revenue.
Identify defaulted and delinquent loans.
Analyze loan distribution by state, branch, product group, grade, and age group.
Track loan disbursement trends and maturity periods.
Develop dashboards that make banking information easier to understand.
Support stakeholders in monitoring portfolio performance and potential credit risks.

## ❗Problem Statement

Banks generate large volumes of customer and loan data. Without appropriate analysis, it can be difficult to identify loan default trends, customer segments, revenue performance, branch efficiency, risky loans, and overall business growth.
This project aims to transform raw banking data into meaningful information through SQL queries, KPI calculations, and dashboards.
Banks generate massive amounts of customer and transaction data every day. Without proper analysis, it becomes difficult to identify:

Loan default trends.
Customer segmentation opportunities.
Revenue performance.
Branch-wise efficiency.
High-risk customers and loans.
Overall business growth patterns.

This project addresses these challenges by converting raw banking data into actionable insights through data visualization and analytics.

## 🧹 Data Cleaning and Preparation

The project presentation documents the following data-cleaning activities:
Removed rows containing missing or null values in important columns.
Removed empty columns that contained no useful data.
Removed a duplicate state-abbreviation column.
Replaced missing values in BH Name with Unknown.
Replaced missing values in Caste with Unknown.
Replaced missing values in Credit Officer Name with Unknown.
Replaced missing values in Disb By with Unknown.
Converted Closed Date to a proper date format.
Converted Date of Birth to a proper date format.
Converted Disbursement Date to a proper date format.
Standardized state names for improved readability and consistency.

These steps help improve data consistency and prepare the data for analysis and visualization.

## 📊 Key Performance Indicators (KPIs)

1. Total Loan Amount Funded
Measures the total value of loans disbursed by the bank.

SUM(Funded Amount)
