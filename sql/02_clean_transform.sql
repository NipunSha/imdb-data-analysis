USE imdb_db;

DROP TABLE IF EXISTS imdb_movies;

CREATE TABLE imdb_movies AS
SELECT
  Poster_Link,
  Series_Title,

  -- Released_Year can be "1994" or weird values; extract a 4-digit year safely
  CASE
    WHEN Released_Year REGEXP '[0-9]{4}'
      THEN CAST(SUBSTRING(Released_Year, 1, 4) AS UNSIGNED)
    ELSE NULL
  END AS Released_Year,

  Certificate,

  -- Runtime like "142 min" -> 142
  CASE
    WHEN Runtime REGEXP '^[0-9]+'
      THEN CAST(SUBSTRING_INDEX(Runtime, ' ', 1) AS UNSIGNED)
    ELSE NULL
  END AS Runtime_Minutes,

  Genre,

  -- Rating as decimal
  CASE
    WHEN IMDB_Rating REGEXP '^[0-9]+(\\.[0-9]+)?$'
      THEN CAST(IMDB_Rating AS DECIMAL(3,1))
    ELSE NULL
  END AS IMDB_Rating,

  Overview,

  -- Meta_score sometimes blank
  CASE
    WHEN Meta_score REGEXP '^[0-9]+$'
      THEN CAST(Meta_score AS UNSIGNED)
    ELSE NULL
  END AS Meta_score,

  Director,
  Star1, Star2, Star3, Star4,

  -- Votes: remove commas
  CASE
    WHEN REPLACE(No_of_Votes, ',', '') REGEXP '^[0-9]+$'
      THEN CAST(REPLACE(No_of_Votes, ',', '') AS UNSIGNED)
    ELSE NULL
  END AS No_of_Votes,

  -- Gross: sometimes ends with .0 -> allow decimals
  CASE
    WHEN REPLACE(Gross, ',', '') REGEXP '^[0-9]+(\\.[0-9]+)?$'
      THEN CAST(REPLACE(Gross, ',', '') AS DECIMAL(20,2))
    ELSE NULL
  END AS Gross

FROM imdb_movies_raw;

-- Checks
SELECT COUNT(*) AS final_rows FROM imdb_movies;
SELECT MIN(Released_Year) AS min_year, MAX(Released_Year) AS max_year FROM imdb_movies;

SELECT
  SUM(Released_Year IS NULL) AS year_nulls,
  SUM(Runtime_Minutes IS NULL) AS runtime_nulls,
  SUM(IMDB_Rating IS NULL) AS rating_nulls,
  SUM(Meta_score IS NULL) AS metascore_nulls,
  SUM(Gross IS NULL) AS gross_nulls
FROM imdb_movies;
