***📊 Activity & Spend Behavior Intelligence**

📌 Project Overview:

This project analyzes daily human behavior, time usage, stress patterns, and spending decisions to uncover how activities and mental states influence productivity, value creation, and financial leakage.
Using SQL for analysis and Power BI for visualization, the project transforms raw personal activity and spending data into actionable behavioral insights that support better decision-making for the future.
________________________________________
**🎯 Business Problem**

Modern individuals often:

•	Spend time without realizing its long-term value
•	Make unplanned purchases during high-stress periods
•	Miss planned goals due to fatigue, distraction, or stress
•	Struggle to identify habits that should be increased or eliminated
This project answers:
•	How much of my time actually creates value?
•	Which activities increase stress but deliver low returns?
•	Does stress influence unplanned spending?
•	What habits should I stop or continue next year?
________________________________________
**🗂️ Data Description**

1️⃣ Activity Data
Tracks daily activities and behavioral signals.
Key Columns
•	date
•	activity
•	duration_min
•	value_level (High / Medium / Low)
•	stress_level
•	energy_after
•	hours
________________________________________
**2️⃣ Spending Logs**

Tracks daily financial transactions.
Key Columns
•	date
•	amount
•	spend_category
•	spend_nature (Planned / Unplanned)
•	linked_reason (stress, boredom, health, etc.)
________________________________________
**🛠️ Tools & Technologies**

•	SQL – Data cleaning, transformation, analysis
•	Power BI – Data modeling, DAX, dashboards
•	Excel / CSV – Raw data source
•	GitHub – Version control and documentation
________________________________________
**🧮 SQL Analysis Workflow**

All SQL files are organized inside the /sql folder.
sql/
├── 01_data_cleaning.sql
├── 02_activity_analysis.sql
├── 03_stress_analysis.sql
├── 04_spend_behavior.sql
├── 05_final_metrics.sql

🔹 Key SQL Tasks

•	Cleaned invalid durations and missing values
•	Converted categorical stress levels into numeric scores
•	Aggregated daily stress levels
•	Identified high-value vs low-value time usage
•	Linked stress patterns with unplanned spending
•	Generated KPIs for Power BI consumption
________________________________________
**📈 Power BI Analysis & Visualization**

🔹 Data Modeling

•	Created date-based relationships between activity and spending tables
•	Built calculated tables for:
o	Daily stress summary
o	High-value time metrics
•	Used DAX for:
o	High Value Time %
o	Unplanned Spend %
o	Stress-based aggregations
o	Damage Score (stress × time × activity impact)
________________________________________
**📊 Dashboard Pages & Insights**

1️⃣ Summary Dashboard

•	High Value Time %
•	High Stress Days
•	Unplanned Spend %
•	Monthly behavioral trends
Insight:
Less than half of total time contributes to high-value outcomes, while stress peaks correlate with unplanned spending.
________________________________________
**2️⃣ Time vs Value Analysis**

•	Value-level differentiation by hours
•	Activities consuming high time but low value

Insight:
Several daily habits consume large amounts of time but produce minimal long-term value.
________________________________________
**3️⃣ Stress and Missed Plans**

•	Monthly missed plans
•	Reasons for missed intentions
•	Stress-driven activity breakdown

Insight:
Distraction and fatigue are the leading causes of missed goals, not lack of time.
________________________________________
**4️⃣ Spend Leakage**

•	Planned vs unplanned spend
•	Categories causing highest spend leakage
•	Spend distribution by stress level

Insight:
A significant portion of spending occurs during medium to high stress periods, indicating emotional-driven financial decisions.
________________________________________
**5️⃣ Do’s and Don’ts for Next Year**

•	Activities to increase (high energy + value)
•	Activities to reduce (high stress + low value)
•	Damage Score ranking

Insight:
Gradual reduction of specific habits can significantly improve both productivity and financial outcomes.
________________________________________
**📌 Key Outcomes**

•	Identified time leakage activities
•	Quantified stress-driven spending
•	Built a behavioral decision framework
•	Created actionable recommendations for habit change
•	Delivered industry-style dashboards with storytelling
________________________________________
**🚀 What This Project Demonstrates**

•	Strong SQL fundamentals
•	Practical Power BI modeling & DAX
•	Analytical thinking beyond visuals
•	Ability to connect behavior → stress → spend
•	Business-oriented insight generation
________________________________________
**👤 Author**
Mukthar Ahamed R
Aspiring Data Analyst
Skilled in SQL, Power BI, Data Analysis & Visualization


