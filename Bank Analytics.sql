create database if not exists Bank_Analytics ;

USE Bank_Analytics ;

CREATE TABLE bank_loan_data (
    account_id VARCHAR(50),
    age VARCHAR(20),
    bh_name VARCHAR(100),
    bank_name VARCHAR(100),
    branch_name VARCHAR(100),
    
    disbursement_date DATE,
    disbursement_year VARCHAR(20),
    
    home_ownership VARCHAR(50),
    loan_status VARCHAR(50),
    
    grade VARCHAR(10),
    sub_grade VARCHAR(10),
    
    purpose_category VARCHAR(100),
    region_name VARCHAR(100),
    religion VARCHAR(50),
    verification_status VARCHAR(50),
    state_name VARCHAR(100),
    
    is_delinquent_loan VARCHAR(5),
    is_default_loan VARCHAR(5),
    
    age_t VARCHAR(20),
    
    loan_amount DECIMAL(15,2),
    funded_amount DECIMAL(15,2),
    
    term VARCHAR(20),
    int_rate DECIMAL(5,2),
    
    total_pymnt DECIMAL(15,2),
    total_pymnt_inv DECIMAL(15,2),
    total_rec_prncp DECIMAL(15,2),
    total_fees DECIMAL(15,2),
    total_rec_int DECIMAL(15,2)
);

select * from bank_loan_data;

# 1) KPI:- Total Loan Amount Funded
SELECT 
    SUM(funded_amount) AS total_loan_amount_funded
FROM bank_loan_data;

# 2) KPI:- Total Loans
SELECT 
    COUNT(*) AS total_loans
FROM bank_loan_data;

# 3) KPI:- Total Collection
SELECT 
    SUM(total_rec_prncp + total_rrec_int) AS total_collection
FROM bank_loan_data;

# 4) KPI:- Total Interest
SELECT 
    SUM(total_rrec_int) AS total_interest
FROM bank_loan_data;

# 5) KPI:- Branch-Wise Performance
SELECT 
    branch_name,
    SUM(total_rrec_int) AS total_interest,
    SUM(total_fees) AS total_fees,
    SUM(total_pymnt) AS total_revenue
FROM bank_loan_data
GROUP BY branch_name
ORDER BY total_revenue DESC;

# 6) KPI:- State-Wise Loan
SELECT 
    state_name,
    SUM(loan_amount) AS total_loan
FROM bank_loan_data
GROUP BY state_name
ORDER BY total_loan DESC;

# 7) KPI:- Religion-Wise Loan
SELECT 
    religion,
    SUM(loan_amount) AS total_loan
FROM bank_loan_data
GROUP BY religion
ORDER BY total_loan DESC;

# 8)KPI:- Product Group-Wise Loan
SELECT 
    purpose_category,
    SUM(loan_amount) AS total_loan
FROM bank_loan_data
GROUP BY purpose_category
ORDER BY total_loan DESC;

# 9) KPI:- Disbursement Trend (Year-Month)
SELECT 
    DATE_FORMAT(disbursement_date, '%Y-%m') AS ym,
    SUM(loan_amount) AS total_disbursed
FROM bank_loan_data
GROUP BY DATE_FORMAT(disbursement_date, '%Y-%m')
ORDER BY ym;

# 10) KPI:- Grade-Wise Loan
SELECT 
    grrade,
    COUNT(*) AS total_loans,
    SUM(loan_amount) AS total_loan_amount
FROM bank_loan_data
GROUP BY grrade
ORDER BY total_loan_amount DESC;

# 11) KPI:- Default Loan Count
SELECT 
    COUNT(*) AS default_loan_count
FROM bank_loan_data
WHERE is_default_loan = 'Y';

# 12) KPI:- Delinquent Client Count
SELECT 
    COUNT(*) AS delinquent_client_count
FROM bank_loan_data
WHERE is_delinquent_loan = 'Y';

# 13) KPI:- Delinquent Loan Rate
SELECT 
    ROUND(
        (COUNT(CASE WHEN is_delinquent_loan = 'Y' THEN 1 END) * 100.0)
        / COUNT(*),
        2
    ) AS delinquent_loan_rate_percentage
FROM bank_loan_data;

# 14) KPI:- Default Loan Rate
SELECT 
    ROUND(
        (COUNT(CASE WHEN is_default_loan = 'Y' THEN 1 END) * 100.0)
        / COUNT(*),
        2
    ) AS default_loan_rate_percentage
FROM bank_loan_data;

# 15) KPI:- Status-Wise Loan
SELECT 
    loan_status,
    COUNT(*) AS total_loans
FROM bank_loan_data
GROUP BY loan_status
ORDER BY total_loans DESC;

# 16)KPI:- Age Group-Wise Loan
SELECT 
    age,
    COUNT(*) AS total_loans
FROM bank_loan_data
GROUP BY age
ORDER BY total_loans DESC;

# 17)KPI:- Loan Maturity
SELECT 
    term,
    COUNT(*) AS total_loans
FROM bank_loan_data
GROUP BY term
ORDER BY total_loans DESC;

# 18) KPI:- No Verified Loans
SELECT 
    COUNT(*) AS no_verified_loans
FROM bank_loan_data
WHERE verification_status = 'Not Verified';









