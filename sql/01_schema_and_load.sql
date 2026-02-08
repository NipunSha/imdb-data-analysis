CREATE DATABASE IF NOT EXISTS imdb_db;
USE imdb_db;

DROP TABLE IF EXISTS imdb_movies_raw;

CREATE TABLE imdb_movies_raw (
  Poster_Link TEXT,
  Series_Title TEXT,
  Released_Year TEXT,
  Certificate TEXT,
  Runtime TEXT,
  Genre TEXT,
  IMDB_Rating TEXT,
  Overview TEXT,
  Meta_score TEXT,
  Director TEXT,
  Star1 TEXT,
  Star2 TEXT,
  Star3 TEXT,
  Star4 TEXT,
  No_of_Votes TEXT,
  Gross TEXT
);

-- After importing the CSV into imdb_movies_raw:
SELECT COUNT(*) AS raw_rows FROM imdb_movies_raw;

