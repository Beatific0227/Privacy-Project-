CREATE TABLE Transactions (
    Transaction_ID SERIAL PRIMARY KEY, 
    User_Num INT,
    Card INT,
    Year INT,
    Month INT,
    Day INT,
    Time TIME,
    Amount DECIMAL(10, 2),
    UseChip VARCHAR(255),
    MerchantName VARCHAR(255),
    MerchantCity VARCHAR(255),
    MerchantState VARCHAR(255),
    Zip DECIMAL(10, 0),
    MCC INT,
    Errors VARCHAR(255),
    IsFraud CHAR(2)
);
