# IMDB Movies Data Analysis (SQL + Python)

This project analyzes the IMDB Top 1000 movies dataset to answer practical, business-style questions using Python and MySQL.

The goal was not just to run queries, but to build a clean, reproducible workflow:
- Clean messy raw data in Python
- Load it into MySQL with a proper schema
- Write SQL queries to extract insights about ratings, directors, genres, and revenue

This is the kind of work you’d do in a real analytics or business intelligence role.

---

## 📊 Business Questions Answered

Some of the questions explored in this project:

- Which movies are the highest rated (with vote count used as a tie-breaker)?
- Which directors have the best average ratings (with a minimum movie threshold)?
- How does movie revenue change across decades?
- Which genres perform best in terms of volume, ratings, and total revenue?

---

## 🛠️ Workflow

1. **Data Cleaning (Python / pandas)**
   - Script: `clean_imdb.py`
   - Handles missing values, fixes formats, and prepares the dataset for SQL import

2. **Database Setup & Transformation (MySQL)**
   - `sql/01_schema_and_load.sql`  
     Creates the raw table and prepares the database
   - `sql/02_clean_transform.sql`  
     Safely converts text fields into proper numeric columns (year, rating, votes, gross, etc.)

3. **Analysis (MySQL)**
   - `sql/03_analysis.sql`  
     Contains queries for:
     - Top movies by rating
     - Top directors by average rating
     - Revenue by decade
     - Genre performance

---

## 📈 Example Outputs

Screenshots of query results are available in the `screenshots/` folder, including:
- Top 10 movies by rating
- Top directors by average rating
- Revenue by decade
- Genre performance summary

---

## 💡 Key Takeaways

- Built a clean SQL analytics table from messy real-world data
- Used defensive SQL casting to avoid common data quality issues
- Designed queries that answer real business-style questions, not just toy examples
- Structured the project so it can be easily reproduced by someone else

---

## 🧰 Tools Used

- Python (pandas) for data cleaning
- MySQL for storage and analysis
- MySQL Workbench for querying
- Git & GitHub for version control and project presentation

---

## 📁 Repository Structure

imdb-data-analysis/
├── sql/
│ ├── 01_schema_and_load.sql
│ ├── 02_clean_transform.sql
│ └── 03_analysis.sql
├── screenshots/
│ ├── 01_top_movies.png
│ ├── 02_top_directors.png
│ ├── 03_revenue_by_decade.png
│ └── 04_genre_performance.png
├── clean_imdb.py
├── .gitignore
└── README.md


---

## 🚀 How to Reproduce

1. Run `clean_imdb.py` to clean the raw dataset (not included in repo)
2. Import the cleaned CSV into MySQL as `imdb_movies_raw`
3. Run SQL scripts in order:
   - `01_schema_and_load.sql`
   - `02_clean_transform.sql`
   - `03_analysis.sql`

---

## 📌 Why This Project

This project demonstrates how I approach data work in a practical setting:
- Start with messy data
- Clean it properly
- Design a usable data model
- Write queries that support real analytical questions
- Present results clearly and reproducibly
