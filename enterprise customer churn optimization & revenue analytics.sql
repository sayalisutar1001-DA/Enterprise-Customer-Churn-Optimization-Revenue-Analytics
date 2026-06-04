create database Customer_Churn;
use  Customer_Churn;

show databases;

SELECT * FROM `enterprise customer churn optimization & revenue analytics` ;

SHOW TABLES;

RENAME TABLE `customer_churn_analytics` to customer_churn;


SELECT COUNT(*) AS total_loaded_record
FROM customer_churn_analytics;



SELECT user_id, COUNT(user_id) 
FROM  customer_churn_analytics
GROUP BY user_id 
HAVING COUNT(user_id) > 1;

--------------------------------------------------------------------------------
## 1. What is the overall customer churn rate?
SELECT
ROUND(
COUNT(CASE WHEN churn_status='Yes' THEN 1 END) * 100.0 / COUNT(*),2
) AS Churn_Rate
FROM  customer_churn;

--------------------------------------------------------------------------------
 ## 2. Which subscription plan has the highest churn rate?
SELECT
subscription_type,
ROUND(COUNT(CASE WHEN churn_status='Yes' THEN 1 END) * 100.0 /
COUNT(*),2
) AS Churn_Rate
FROM  customer_churn
GROUP BY subscription_type
ORDER BY Churn_Rate DESC;

--------------------------------------------------------------------------------
## 3. Which customer segment contributes the most revenue?
SELECT
subscription_type,
SUM(total_charges) AS Revenue
FROM customer_churn
GROUP BY subscription_type
ORDER BY Revenue DESC;

--------------------------------------------------------------------------------
## 4. Which factors are most responsible for customer churn?
SELECT
feedback_rating,
COUNT(*) AS Churned_Customers
FROM customer_churn
WHERE churn_status='Yes'
GROUP BY feedback_rating
ORDER BY Churned_Customers DESC;

--------------------------------------------------------------------------------
## 5. Which country generates the highest revenue?
SELECT
country,
SUM(total_charges) AS Revenue
FROM customer_churn
GROUP BY country
ORDER BY Revenue DESC
LIMIT 1;

--------------------------------------------------------------------------------
##  6. Who is the highest revenue-generating customer in each country?
SELECT * FROM
(
SELECT user_id,country,total_charges,
ROW_NUMBER() OVER(PARTITION BY country ORDER BY total_charges DESC) AS rn
FROM customer_churn
) t
WHERE rn = 1;

--------------------------------------------------------------------------------
## 7. How does customer feedback rating impact churn?
SELECT country,
ROUND(COUNT(CASE WHEN churn_status='Yes' THEN 1 END) * 100.0 /COUNT(*),2) AS Churn_Rate
FROM customer_churn
GROUP BY country
ORDER BY Churn_Rate DESC
LIMIT 1;

--------------------------------------------------------------------------------
## 8. Do customers with more service calls churn more frequently?
SELECT
churn_status,
AVG(customer_service_calls) AS Avg_Service_Calls
FROM customer_churn
GROUP BY churn_status;

--------------------------------------------------------------------------------
## 9. Which payment method generates the highest revenue?
SELECT
payment_method,
SUM(total_charges) AS Revenue
FROM customer_churn
GROUP BY payment_method
ORDER BY Revenue DESC;

--------------------------------------------------------------------------------
## 10. Which subscription plan generates the highest revenue?
SELECT
subscription_type,
SUM(total_charges) AS Revenue
FROM customer_churn
GROUP BY subscription_type
ORDER BY Revenue DESC;

--------------------------------------------------------------------------------
## 11. Are high-paying customers more likely to churn?
SELECT
churn_status,
AVG(total_charges) AS Avg_Revenue
FROM customer_churn
GROUP BY churn_status;

--------------------------------------------------------------------------------
## 12. What is the average revenue per customer?
SELECT
ROUND(AVG(total_charges),2) AS Avg_Revenue_Per_Customer
FROM  customer_churn;

--------------------------------------------------------------------------------
## 13. Which device type is associated with the highest churn?
SELECT
device_type,
COUNT(*) AS Churned_Customers
FROM  customer_churn
WHERE churn_status='Yes'
GROUP BY device_type
ORDER BY Churned_Customers DESC;

--------------------------------------------------------------------------------
## 14. Which age group has the highest churn rate?
SELECT age,
ROUND(COUNT(CASE WHEN churn_status='Yes' THEN 1 END) * 100.0 /COUNT(*),2) AS Churn_Rate
FROM  customer_churn
GROUP BY age
ORDER BY Churn_Rate DESC;

--------------------------------------------------------------------------------
## 15. What are the characteristics of loyal customers?
SELECT
AVG(monthly_active_hours) AS Avg_Active_Hours,
AVG(feedback_rating) AS Avg_Feedback,
AVG(total_charges) AS Avg_Revenue
FROM  customer_churn
WHERE churn_status='No';

--------------------------------------------------------------------------------
## 16. Who are the top 10 revenue-generating customers?
SELECT
user_id,
total_charges
FROM  customer_churn
ORDER BY total_charges DESC
LIMIT 10;

--------------------------------------------------------------------------------
## 17. Is there a relationship between active hours and churn?
SELECT
churn_status,
AVG(monthly_active_hours) AS Avg_Active_Hours
FROM  customer_churn
GROUP BY churn_status;

--------------------------------------------------------------------------------
## 18. Which customer segment should the business focus on for growth?
SELECT
subscription_type,
COUNT(*) AS Customers,
SUM(total_charges) AS Revenue
FROM  customer_churn
GROUP BY subscription_type
ORDER BY Revenue DESC;

--------------------------------------------------------------------------------
## 19. What actions can reduce customer churn based on the analysis?
SELECT
feedback_rating,
AVG(customer_service_calls) AS Avg_Calls,
COUNT(*) AS Churned_Customers
FROM  customer_churn
WHERE churn_status='Yes'
GROUP BY feedback_rating
ORDER BY Churned_Customers DESC;

--------------------------------------------------------------------------------
## 20. How can the company increase revenue while reducing churn?
SELECT subscription_type,SUM(total_charges) AS Revenue,
ROUND(COUNT(CASE WHEN churn_status='Yes' THEN 1 END) * 100.0 /COUNT(*),2) AS Churn_Rate
FROM  customer_churn
GROUP BY subscription_type
ORDER BY Revenue DESC;
