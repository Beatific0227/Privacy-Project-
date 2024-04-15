-- Compare merchant City (find distribution) and Fraud 
/*SELECT MerchantCity, COUNT(*) AS fraud_count
FROM transactions
WHERE IsFraud = 'Yes'
GROUP BY MerchantCity
ORDER BY fraud_count DESC;
*/
-- Compare UserChip type and Fruad 
SELECT
    UseChip,
    IsFraud,
    COUNT(*) AS Fraud_Count
FROM
    transactions
GROUP BY
    UseChip, IsFraud
ORDER BY
    UseChip, IsFraud;

-- Compare Fraud and Nonfraud average trans amount
/*SELECT
    IsFraud,
    AVG(Amount) AS Average_Transaction_Amount
FROM
    transactions
GROUP BY
    IsFraud
ORDER BY
    IsFraud;*/
	
-- Top Merchants by Transcation Volume and Amount 
-- By Volume
/*SELECT MerchantName, COUNT(*) AS transaction_count
FROM transactions
GROUP BY MerchantName
ORDER BY transaction_count DESC
LIMIT 10;

-- By Amount
SELECT MerchantName, SUM(Amount) AS total_amount
FROM transactions
GROUP BY MerchantName
ORDER BY total_amount DESC
LIMIT 10;*/

-- Time Patterns in Fraudulent Transactions

SELECT
    EXTRACT(HOUR FROM Time) AS Hour,
    COUNT(*) AS Fraud_Count
FROM
    transactions
WHERE
    IsFraud = 'Yes'
GROUP BY
    Hour
ORDER BY
    fraud_count DESC;

-- Merchant Category Code MCC Understanding which types of merchants (categorized by MCC) are
-- most associated with fraudulent transactions could be 
-- useful for pinpointing high-risk categories.

SELECT
    MCC,
    COUNT(*) AS Fraud_Count
FROM
    transactions
WHERE
    IsFraud = 'Yes'
GROUP BY
    MCC
ORDER BY
    Fraud_Count DESC;
	
--Geographical Trends in Fraud: Analyzing 
--fraud occurrences by merchant location 
--(city or state) could reveal geographical hotspots for fraudulent activity.
SELECT
    MerchantCity,
    MerchantState,
    COUNT(*) AS Fraud_Count
FROM
    transactions
WHERE
    IsFraud = 'Yes'
GROUP BY
    MerchantCity, MerchantState
ORDER BY
    Fraud_Count DESC
LIMIT 10;