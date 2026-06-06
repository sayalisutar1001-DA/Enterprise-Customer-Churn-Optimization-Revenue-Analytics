# Enterprise Customer Churn Optimization & Revenue Analytics



End-to-end data analytics project using SQL and Power BI to analyze mobile sales data, uncover trends, and build interactive dashboards for business insights.

## 📌 Project Overview
This project delivers an interactive, end-to-end Business Intelligence (BI) solution designed to track, analyze, and mitigate customer churn while uncovering critical revenue optimization opportunities. Utilizing an enterprise customer database, the solution visualizes the complex relationships between subscription tiers, geographic distributions, user engagement levels, and customer sentiment.The project features a 3-page dynamic Power BI dashboard built using robust data modeling and DAX formulas, providing decision-makers with actionable, drill-down operational insights.

# 📁 Dataset

Source: Enterprise Customer Churn Optimization & Revenue Analytics (CSV)
Key Columns:

## 📂 Dataset Description

The dataset contains sales transactions with the following columns:

user_id

gender

age

country

subscription_type

monthly_active_hours

device_type

payment_method

monthly_charges

total_charges

customer_service_calls

feedback_rating

paperless_billing

multi_profile_count

churn_status

## 🛠️ Tools & Technologies Used

MySQL– Data cleaning, analysis, 

Power BI – Interactive dashboard creation

## 🔍 Key Analysis Performed

- **Key Performance Indicators (KPIs):** Tracking Total Revenue ($116.14M), Total Customers (150K), Average Revenue, and Active Hours.
- **Customer Segmentation:** Analyzed customers based on Subscription Type, Gender, Payment Methods, and Device Types.
- **Interactive Slicers:** Enabled seamless filtering by Country, Device Type, and Subscription Tiers with a custom **Reset Filters** action button.
- **Data Cleanliness:** Fully optimized UX with standard business naming conventions, custom corporate color themes, and responsive visuals.


## 📷 Dashboard Preview

###  Enterprise Customer Churn Optimization & Revenue Analytics

<img width="753" height="470" alt="image" src="https://github.com/user-attachments/assets/a11bc9fe-0692-4ae4-88f9-98d8d6417dc5" />


#### Insight:

1. Subscription Value Gap

Basic subscription is the flagship tier, generating $46M in revenue, significantly outperforming Premium at $29M. This indicates that the entry-level plan is the company's primary revenue engine.

2. Tiered Revenue Efficiency

The Standard plan delivers strong revenue efficiency, generating $41M in revenue while showing lower active hours than the Basic plan. This suggests effective monetization with relatively lower engagement.

3. Omnichannel Payment Balance

Customer payments are evenly distributed across all payment methods. Net Banking leads slightly at 25.22%, while the remaining channels collectively account for nearly 75% of transactions, reducing dependency on a single payment option.

4. Platform Engagement Dominance

Mobile is the dominant customer touchpoint, accounting for 54.93% of users—almost twice the share of Laptop users at 29.94%. This highlights the importance of maintaining a strong mobile experience.


###  Country Wise Analysis

<img width="684" height="466" alt="image" src="https://github.com/user-attachments/assets/86dd4d9d-43c8-4a81-a2d7-f95b2785080e" />




#### insights

1. Geographic Market Leader

India is the company's strongest market, generating $40.84M in revenue. This is substantially higher than the USA, the second-largest market at $29.02M, making India the primary growth driver for the business.

2. Market Value Efficiency

Canada demonstrates strong revenue efficiency by generating $17.40M from only 22.4K customers. It delivers revenue comparable to the UK while serving a smaller customer base, indicating higher value per customer.

3. Global Audience Balance

Although India accounts for the largest share of customers (35.05%), the remaining customer base is well distributed across international markets. The USA contributes 25.02%, while the UK and Canada each represent approximately 15%, reducing reliance on a single region.

4. Uniform ARPU Performance

Average Revenue Per User (ARPU) remains highly consistent across all countries, ranging between $773 and $776. This suggests a standardized pricing strategy and similar customer spending behavior across global markets.


###  Churn Analysis

<img width="661" height="444" alt="image" src="https://github.com/user-attachments/assets/6fba683d-6c61-4b17-99cc-4669c4123cac" />

#### insights

1. High-Volume Churn Driver

The Basic subscription tier experiences the highest customer churn, with 13K churned users compared to 8K in the Premium tier. This identifies entry-level customer retention as the business’s biggest churn challenge.

2. Market Retention Efficiency

India records the highest churn volume at 11K customers due to its large customer base. However, Germany shows weaker retention efficiency, losing 3K customers from a much smaller base, indicating a relatively high churn concentration.

3. Support-Driven Defection Pattern

A significant number of customers churn without ever contacting support (13K), suggesting that many users leave before seeking assistance. At the same time, customers with multiple support interactions collectively represent a large share of churn, highlighting the importance of faster issue resolution and proactive support.

4. Silent Churn Among Satisfied Customers

Customer churn peaks at a feedback rating of 4, with 13.2K churned users—nearly twice the churn observed among lower-rated segments. This suggests that churn is driven by factors beyond product satisfaction, such as pricing, competitive offers, or changing customer needs.



### 👤 Author
Sayali Sutar 

[GitHub](https://github.com/sayalisutar1001-DA/Enterprise-Customer-Churn-Optimization-Revenue-Analytics/new/main)  
[LinkedIn](www.linkedin.com/in/sayalisutarda1001)


## 📁 Project Structure

- data/        → Contains dataset files  
- sql/         → SQL scripts for analysis  
- dashboard/   → Power BI dashboard file (.pbix)  
- images/      → Dashboard screenshots  
- README.md    → Project documentation  







