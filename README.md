# IMDB Movies Data Analysis (SQL + Python)

An analysis of the IMDB Top 1000 movies dataset.  
Workflow: clean the raw CSV in Python → load into MySQL → run SQL analysis queries → summarize insights.

## Tools
- Python (pandas) for cleaning
- MySQL + MySQL Workbench for analysis
- Git/GitHub for version control

## Dataset
IMDB Top 1000 Movies (CSV) with columns like title, year, rating, votes, genre, runtime, gross revenue.

## Project Workflow
1. **Clean data (Python)**
   - Standardizes numeric fields (votes, gross, ratings)
   - Handles blanks safely for SQL import

2. **Load into MySQL**
   - Raw table: `imdb_movies_raw` (all text)
   - Cleaned table: `imdb_movies` (typed numeric columns)

3. **Analysis (SQL)**
   - Top movies by rating (tie-break by votes)
   - Top directors by average rating
   - Revenue trends by decade
   - Genre-level performance (ratings + gross)

## Key Insights (from queries)
- Ratings are consistently available; voting volume helps validate rankings.
- Meta_score is mostly missing in this dataset (handled safely as NULL).
- Gross revenue is missing for some movies; trends are computed using available records.

## Outputs

### Top movies by rating
![Top Movies](screenshots/01_top_movies.png)

### Top directors by average rating
![Top Directors](screenshots/02_top_directors.png)

### Revenue by decade
![Revenue by Decade](screenshots/03_revenue_by_decade.png)

### Genre performance
![Genre Performance](screenshots/04_genre_performance.png)

## How to Run (quick)
1. Create schema + raw table: run `sql/01_schema_and_load.sql`
2. Import CSV into `imdb_movies_raw` (Workbench Table Data Import Wizard)
3. Transform into clean table: run `sql/02_clean_transform.sql`
4. Run analysis queries: run `sql/03_analysis.sql`

## Author
Nipun Sharma

