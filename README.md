<img width="500" height="281" alt="image" src="https://github.com/user-attachments/assets/3dea1337-6913-4f07-887c-ae8d5cdcb6b0" />


# Telecom Churn Analysis
## I. Introduction/Context

## WHO IS AIRTEL? 
Bharti Airtel Limited, commonly known as Airtel, is a premier Indian multinational telecommunications service. The company has significat amounts of data on its customers. Airtel has complied a detailed dataset capturing customer demographics, service usage, billing history and churn behavior. This projects aims to analyze the churn rate of Airtel's customers by thoroughly examining this data to identify patterns and root causes behind customer departures. The insights gained will empower Airtel to take proactive, targeted measures such as a personalized retention campaigns and tailored offers to enchance cusotmers satisfaction and ultimately strengthen loyaly 

### DEMOGRAPHIC 
|Column Name | Description | 
|--------|----------|
|Customer_ID| Unique Identifier for each customer |
|Gender| Gender of the Customer |
|Age| Age of the Customer |
|Married| Marital status of Customer |
|State| State customer resides in |

### Important Churn Status/Details
|Column Name | Description | 
|--------|----------|
|Customer_Status| Customer Status with the services |
|Churn_Category| Broad classification of why the customer left | 
|Churn_Reason| The detailed reason for the the customer's departure|

## II. DATA CLEANING/PREPARATION 
To ensure data integrity and scalabitlity, this project utilizes Microsoft SQL Server for the backend database and Power BI for visualizations. 
 
<details>
<summary> Phase I: DATA IMPORTING & SQL STAGING </summary>
The initial phase focuses on moving raw data into a structured environment where ti can be cleaned without affecting source files. Setup a dedicated database to host all tables and the "Customer_ID" as the primary key to ensure each row is unique identifier or in this case customer. 
 
Changing all the cells with out any data to be set as NULLs during import because NULLs are easier to deal with than empty strings in MYSQL. 
</details>

<details>
<summary>  Phase II: DATA CLEANING IN MYSQL SERVER  </summary>
</details>

<details>
<summary>  Phase III:POWER BI DATA TRAN  </summary>
</details>

## III. DASHBOARD 
Based on the Power BI dashboard, the AIRTEL TELECOM Churn Analysis Summary covers the following areas:

* **Overall Customer Metrics:** Overview of total customers, new joiners, and churn figures.

* **Churn Demographics:** Breakdown of customer churn by gender and age group.

* **Service & Product Analysis:** Churn in relation to specific services used and internet service types (e.g., Fiber Optic,  DSL).

* **Billing & Payment Factors:** Analysis of churn by payment method, contract type, and monthly charge range.

* **Customer Tenure:** Churn distribution across different customer tenure groups.

* **Churn Reasons:** Categorization of churn by primary cause (e.g., price, dissatisfaction).


<img width="1487" height="803" alt="image" src="https://github.com/user-attachments/assets/daf94d86-5a5f-4c38-964d-cc925d3f68da" />

## IV.EXPLORATORY DATA ANALYSIS 
This section presents key business insights derived from MySQL queries and visualized through an interactive Power BI dashboard. The analysis focuses on answering critical questions about customer churn, service adoption, and revenue patterns to drive data-informed retention strategies.

<details>
<summary> Question: What is the overall churn rate, and how does it vary by contract type? </summary>
<img width="306" height="146" alt="image" src="https://github.com/user-attachments/assets/b41a40ac-8942-467f-9830-08927b00ded1" />
<img width="395" height="75" alt="image" src="https://github.com/user-attachments/assets/69a636d6-a8b5-4353-b50b-3bcf23b5ab19" />

Observations: 
- Month-to-Month have alarmingly high churn 
- Long-Term contrcts dramatically reduce churn 

</details>

<details>
<summary> Question: How do customer tenure and monthly charges correlate with churn? </summary>
<img width="243" height="74" alt="image" src="https://github.com/user-attachments/assets/47517ba2-d101-4055-8114-eee47ace5080" />
<img width="205" height="76" alt="image" src="https://github.com/user-attachments/assets/4bb379fb-9607-40fa-bb7d-ab2a072896ac" />

Observations: 
- Amongst all Customer_Status , the churned customers does seem to have the highest montly charge.
- The average Tenure in months was on average 17 months for customers of all status, suggesting that there is not correlation between customer tenure and their chances of churning.
- 
</details>

<details>
<summary> Question: What is the overall churn rate, and how does it vary by contract type? </summary>
</details>
## V. RECOMMENDATIONS

