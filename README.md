# Day9-Task9--in-Skillytixs-Internship-
# Sales Trend Analysis

## Objective
Analyze monthly sales trends using SQL to understand revenue patterns and peak months.

## Approach
- Used `EXTRACT(YEAR/MONTH)` and `TO_CHAR()` to group data by month.
- Calculated total revenue (`SUM(total_sale)`) and order count (`COUNT(DISTINCT transactions_id)`).
- Sorted results chronologically and identified top revenue months.

## Results 
<img width="309" height="147" alt="top3_revenue_months_2023" src="https://github.com/user-attachments/assets/fc4b6490-86e9-48ec-9304-4087f8a871f4" />

## Insights
- Peak sales occurred in **May, August, and November**.  
- Steady growth seen from Q1 to Q2.  
- Useful for planning **inventory and marketing campaigns** during top months.
