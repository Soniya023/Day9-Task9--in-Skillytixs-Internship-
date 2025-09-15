# Day9-Task9--in-Skillytixs-Internship-
# Sales Trend Analysis

## Objective
Analyze monthly sales trends using SQL to understand revenue patterns and peak months.

## Approach
- Used `EXTRACT(YEAR/MONTH)` and `TO_CHAR()` to group data by month.
- Calculated total revenue (`SUM(total_sale)`) and order count (`COUNT(DISTINCT transactions_id)`).
- Sorted results chronologically and identified top revenue months.

## Results (Example)
| Month-Year | Total Revenue | Total Orders |
|-----------|---------------|--------------|
| 2023-01  | 45,600.00     | 320          |
| 2023-02  | 38,950.00     | 280          |
| 2023-03  | 50,120.00     | 355          |
| ...      | ...           | ...          |

**Top 3 Revenue Months:**  
| Month-Year | Total Revenue |
|-----------|---------------|
| 2023-05  | 60,430.00     |
| 2023-08  | 59,850.00     |
| 2023-11  | 58,900.00     |

## Insights
- Peak sales occurred in **May, August, and November**.  
- Steady growth seen from Q1 to Q2.  
- Useful for planning **inventory and marketing campaigns** during top months.
