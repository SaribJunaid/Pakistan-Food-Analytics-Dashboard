# Pakistan-Food-Analytics-Dashboard
An end-to-end data project analyzing real-time food trends in five major cities of Pakistan using web scraping, data cleaning, SQL analysis, and Power BI.

Problem Statement
Foodies and vloggers often struggle to discover which restaurants are most popular among locals in different cities. Existing reviews are scattered or paywalled. This project solves that by collecting and analyzing actual food data from Foodpanda to highlight top-rated and most-reviewed restaurants by city and dish.

Tech Stack
Python + Selenium: For real-time web scraping
Pandas + Jupyter Notebook: For data cleaning and preprocessing
SQL Server (SSMS): For storing and querying cleaned data
Power BI: For dashboard creation and storytelling

Covered Cities & Dishes
Karachi – Biryani, Nihari
Lahore – BBQ, Karahi
Peshawar – Chapli Kebab
Islamabad – Burgers
Quetta – Sajji

📂 Project Structure

Pakistan-Food-Analytics/
├── README.md
├── requirements.txt
├── scraping/
│   ├── karachi_scraper.py
│   ├── lahore_scraper.py
│   └── ...
├── data/
│   ├── karachi.csv
│   ├── lahore.csv
│   └── cleaned_food_data.csv
├── notebooks/
│   └── data_cleaning_analysis.ipynb
├── sql/
│   └── cleaned_food_data_queries.sql
├── dashboard/
│   └── dashboard.pbix
└── assets/
    └── screenshots, video clips

Data Cleaning Highlights
Removed null or duplicate records
Standardized restaurant names and city labels
Converted review counts and ratings to appropriate formats

Key Insights from Dashboard
Top 10 most reviewed restaurants per city
Highest-rated restaurants by dish type
Comparative analysis of local vs trending dishes

How to Run This Project
Clone the repo
Run the scraper files (scraping/*.py) with ChromeDriver installed
Clean the data via notebooks/*.ipynb
Import cleaned_food_data.csv into SQL Server
Use sql/cleaned_food_data_queries.sql for analysis
Open dashboard/dashboard.pbix in Power BI for visualization

Learnings & Outcomes
Real-world scraping challenges (CAPTCHA, delays)
Data cleaning for consistency and insights
SQL query writing and indexing
Visual storytelling using Power BI

Let's Connect
If you're hiring for data roles or working on similar projects, let’s collaborate!

