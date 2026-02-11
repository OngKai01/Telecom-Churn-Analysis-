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

## II. DATA CLEANING 
## III. DASHBOARD 
Power BI Visualizations: I've generated diverse Power BI visuals to support the company in conducting this extensive churn analysis, briefly outlined below:

The overview cards provide a quick glance at total customers, churn rate, and the count of churned customers. 
A clustered bar chart succinctly reveals the predominant reasons behind churn, highlighting the impact of competitor offers. 
Pie and donut charts shed light on the distribution of churned customers by category and contract type, exposing intriguing patterns. 
Geographical nuances are brought to light with a map chart showcasing state-wise churn rates.

<img width="1487" height="803" alt="image" src="https://github.com/user-attachments/assets/daf94d86-5a5f-4c38-964d-cc925d3f68da" />

## IV.EXPLORATORY DATA ANALYSIS 
This section presents key business insights derived from MySQL queries and visualized through an interactive Power BI dashboard. The analysis focuses on answering critical questions about customer churn, service adoption, and revenue patterns to drive data-informed retention strategies.

<details>
<summary> Question: What is the overall churn rate, and how does it vary by contract type? </summary>
<img width="306" height="146" alt="image" src="https://github.com/user-attachments/assets/b41a40ac-8942-467f-9830-08927b00ded1" />
<img width="395" height="75" alt="image" src="https://github.com/user-attachments/assets/69a636d6-a8b5-4353-b50b-3bcf23b5ab19" />
Observations: 
-> Month-to-Month have alarmingly high churn 
-> Long-Term contrcts dramatically reduce churn 
  
</details>
## V. RECOMMENDATIONS

