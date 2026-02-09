🎬 IMDB Movies Data Analysis (SQL + Python)

This project analyzes the IMDB Top 1000 Movies dataset to answer practical, business-style questions around ratings, revenue, genres, and directors.

The focus is on building a clean, analysis-ready dataset, writing reliable SQL transformations, and producing clear insights that could support content strategy, portfolio decisions, or media analytics use cases.

The workflow mirrors a real analytics setup:
Raw data → Cleaning & validation → SQL analysis → Python validation → Insights

🧰 Tools & Stack

MySQL — data modeling, cleaning, transformations, analysis queries

Python (pandas) — data loading & validation

Jupyter Notebook — light exploratory analysis & reproducibility

GitHub — version control & project documentation

📁 Project Structure
imdb-data-analysis/
├── sql/
│   ├── 01_schema_and_load.sql
│   ├── 02_clean_transform.sql
│   └── 03_analysis.sql
├── notebooks/
│   └── IMDB_Analysis.ipynb
├── screenshots/
│   ├── 01_top_movies.png
│   ├── 02_top_directors.png
│   ├── 03_revenue_by_decade.png
│   └── 04_genre_performance.png
├── clean_imdb.py
├── README.md
└── .gitignore

🔄 Workflow

Raw data ingestion

Import the CSV into a raw MySQL table (imdb_movies_raw)

Keep all columns as text initially to avoid type errors

Data cleaning & transformation (SQL)

Safely convert years, ratings, votes, and gross revenue

Handle missing values and malformed entries

Create a clean analysis table: imdb_movies

Validation checks

Row counts match expected records (1000 movies)

Null checks on key fields (year, rating, gross, metascore)

Min/max year sanity checks

Analysis queries

Top movies by rating (tie-break by votes)

Top directors by average rating (min 3 movies)

Revenue by decade

Genre-level performance (volume, ratings, revenue)

Python notebook

Demonstrates how the cleaned dataset can be loaded into pandas

Useful for quick checks, extensions, or visualization later

📊 Key Insights

Here are some high-level findings from the analysis:

Top-rated movies are dominated by classics like The Shawshank Redemption, The Godfather, and The Dark Knight, with vote counts used to break ties between similar ratings.

Director performance shows that a small group of directors consistently achieve higher average ratings when they have at least three movies in the dataset.

Revenue by decade highlights how box office totals increase significantly in more recent decades, reflecting both market growth and inflation effects.

Genre performance reveals that:

Action/Adventure/Drama combinations dominate in total revenue

Drama-heavy genres tend to score higher on average ratings

Some niche genres perform strongly in ratings but not in box office totals

These are the kinds of insights that could support:

Content acquisition strategy

Portfolio mix decisions (quality vs scale)

Genre-focused investment analysis

🖼️ Sample Outputs

Top 10 Movies by Rating


Top Directors by Average Rating


Revenue by Decade


Genre Performance


🧠 What This Project Demonstrates

Designing a clean, analysis-ready data model

Writing defensive SQL that handles messy real-world data

Turning raw data into business-relevant insights

Using Python + SQL together in a practical workflow

Structuring and documenting an analysis project clearly for others to review

▶️ How to Reproduce

Run SQL scripts in order:

01_schema_and_load.sql

02_clean_transform.sql

03_analysis.sql

(Optional) Open:

notebooks/IMDB_Analysis.ipynb
to see how the cleaned data can be loaded into Python.
