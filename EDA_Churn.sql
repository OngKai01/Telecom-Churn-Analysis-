-- data exploration 
-- THE DISTRIBUTION OF GENDER 
SELECT Gender, COUNT(Gender) TotalCount,
CONCAT(ROUND(COUNT(Gender)/(SELECT COUNT(*) FROM db_Churn.customer_data)* 100,2), '%') AS Percentage
FROM db_Churn.customer_data 
GROUP BY Gender;

-- THE DISTRIBUTION OF CONTRACT TYPE 
SELECT Contract, COUNT(Contract) TotalCount,
CONCAT(ROUND(COUNT(Contract)/(SELECT COUNT(*) FROM db_Churn.customer_data)*100,2), '%') AS Percentage 
FROM db_Churn.customer_data
GROUP BY Contract;

-- analyzing a really important column, the Customer Status Column
SELECT Customer_Status, COUNT(Customer_Status) as TotalCount,
ROUND(SUM(Total_Revenue),2) AS TotalRev, CONCAT(ROUND(SUM(Total_Revenue) / (SELECT SUM(Total_Revenue) FROM db_Churn.customer_data)* 100,2), '%') RevPercentage
FROM db_churn.customer_data
GROUP BY Customer_Status;

-- this tells that 17% of the customer have churned form the organization

-- THE DISTRIBUTION OF STATES AMONGST THE CUSTOMERS 
SELECT State, COUNT(state) AS TotalCount,
CONCAT(ROUND(COUNT(State) / (SELECT COUNT(State) FROM db_Churn.customer_data)* 100,2), '%') Percentage
FROM db_churn.customer_data
GROUP BY State
ORDER BY Percentage DESC;

-- Further exploratory analysis 
-- OVERALL CHURN RATE / count churned customers divided by total customers
SELECT 
    COUNT(*) AS Total_Customers,
    SUM(CASE WHEN Customer_Status = 'Churned' THEN 1 ELSE 0 END) AS Churned_Customers,
    COUNT(CASE WHEN Customer_Status = 'Churned' THEN 1 END) * 100.0 / COUNT(*) AS Churn_Rate_Percent
FROM db_churn.tweaked_data;

-- QUESTION: what is the overall churn rate, and how does it vary by contract type? 
SELECT Contract, 
COUNT(*) AS Total_Customers, 
SUM(CASE WHEN Customer_Status = "Churned" THEN 1 ELSE 0 END) AS Churned, 
CONCAT(ROUND(SUM(CASE WHEN Customer_Status = "Churned" THEN 1 ELSE 0 END) * 100 / COUNT(*), 2 ) , '%') AS Churn_Rate_Percent
FROM db_churn.tweaked_data
GROUP BY Contract 
ORDER BY Churn_Rate_Percent DESC;

-- QUESTION: how do customer tenure and monthly charges correlate with churn? 
SELECT Customer_Status, ROUND(AVG(Tenure_in_Months),2) Avg_Tenure
FROM db_churn.tweaked_data
GROUP BY Customer_Status
ORDER BY Avg_Tenure;

SELECT Customer_Status, ROUND(AVG(Monthly_Charge),2) Avg_Montly_Charge
FROM db_churn.tweaked_data
GROUP BY Customer_Status
ORDER BY Avg_Montly_Charge;

-- looks like average tenure in months does not correlate much with churn 
-- considering customers of all status leave on average around 17 months

-- QUESTION: does the absense of specific services lead to churn? 
-- Online_Security risk ratio 
SELECT Online_Security, 
COUNT(*) AS Total_Customers, 
SUM(CASE WHEN Customer_Status = "Churned" THEN 1 ELSE 0 END) AS Churned,
ROUND(SUM(CASE WHEN Customer_Status = "Churned" THEN 1 ELSE 0 END)/COUNT(*), 2) AS Churn_Percentage
FROM db_churn.tweaked_data
GROUP BY Online_Security;
-- amongst the customers with out Online Security, 32% of then Churned 
-- amongst the customers with Online Security, 15% of then Churned, so there is LOWER churn for those with 
-- this service. 

-- PHONE SERVICE 
SELECT Phone_Service, 
COUNT(*) AS Total_Customers, 
SUM(CASE WHEN Customer_Status = "Churned" THEN 1 ELSE 0 END) AS Churned,
ROUND(SUM(CASE WHEN Customer_Status = "Churned" THEN 1 ELSE 0 END)/COUNT(*), 2) AS Churn_Percentage
FROM db_churn.tweaked_data
GROUP BY Phone_Service;

-- MULTIPLE LINES | no: 26% yes: 29% 
SELECT Multiple_Lines, 
COUNT(*) AS Total_Customers, 
SUM(CASE WHEN Customer_Status = "Churned" THEN 1 ELSE 0 END) AS Churned,
ROUND(SUM(CASE WHEN Customer_Status = "Churned" THEN 1 ELSE 0 END)/COUNT(*), 2) AS Churn_Percentage
FROM db_churn.tweaked_data
GROUP BY Multiple_Lines;

-- INTERNET SERVICE | no: 8% yes: 32%
SELECT Internet_Service, 
COUNT(*) AS Total_Customers, 
SUM(CASE WHEN Customer_Status = "Churned" THEN 1 ELSE 0 END) AS Churned,
ROUND(SUM(CASE WHEN Customer_Status = "Churned" THEN 1 ELSE 0 END)/COUNT(*), 2) AS Churn_Percentage
FROM db_churn.tweaked_data
GROUP BY Internet_Service;

-- INTERNET TYPE | cable:26% fiber optics:41% DSL:19% None:8%
SELECT Internet_Type, 
COUNT(*) AS Total_Customers, 
SUM(CASE WHEN Customer_Status = "Churned" THEN 1 ELSE 0 END) AS Churned,
ROUND(SUM(CASE WHEN Customer_Status = "Churned" THEN 1 ELSE 0 END)/COUNT(*), 2) AS Churn_Percentage
FROM db_churn.tweaked_data
GROUP BY Internet_Type;


-- DEVICE PROTECTION PLAN  no: 29 yes: 23 
SELECT Device_Protection_Plan, 
COUNT(*) AS Total_Customers, 
SUM(CASE WHEN Customer_Status = "Churned" THEN 1 ELSE 0 END) AS Churned,
ROUND(SUM(CASE WHEN Customer_Status = "Churned" THEN 1 ELSE 0 END)/COUNT(*), 2) AS Churn_Percentage
FROM db_churn.tweaked_data
GROUP BY Device_Protection_Plan;

-- PREMIUM SUPPORT no: 32 yes: 15 
SELECT Premium_Support, 
COUNT(*) AS Total_Customers, 
SUM(CASE WHEN Customer_Status = "Churned" THEN 1 ELSE 0 END) AS Churned,
ROUND(SUM(CASE WHEN Customer_Status = "Churned" THEN 1 ELSE 0 END)/COUNT(*), 2) AS Churn_Percentage
FROM db_churn.tweaked_data
GROUP BY Premium_Support;

-- STREAMING TV no: 25 yes: 30
SELECT Streaming_TV, 
COUNT(*) AS Total_Customers, 
SUM(CASE WHEN Customer_Status = "Churned" THEN 1 ELSE 0 END) AS Churned,
ROUND(SUM(CASE WHEN Customer_Status = "Churned" THEN 1 ELSE 0 END)/COUNT(*), 2) AS Churn_Percentage
FROM db_churn.tweaked_data
GROUP BY Streaming_TV;

-- UNLIMITED DATA no: 17 yes: 32
SELECT Unlimited_Data, 
COUNT(*) AS Total_Customers, 
SUM(CASE WHEN Customer_Status = "Churned" THEN 1 ELSE 0 END) AS Churned,
ROUND(SUM(CASE WHEN Customer_Status = "Churned" THEN 1 ELSE 0 END)/COUNT(*), 2) AS Churn_Percentage
FROM db_churn.tweaked_data
GROUP BY Unlimited_Data;

-- In conclusion, the internet for this company leaves much to be desired







