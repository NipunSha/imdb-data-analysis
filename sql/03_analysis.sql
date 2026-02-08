USE imdb_db;

-- Top 10 movies by rating (tie-break by votes)
SELECT Series_Title, Released_Year, IMDB_Rating, No_of_Votes
FROM imdb_movies
WHERE IMDB_Rating IS NOT NULL
ORDER BY IMDB_Rating DESC, No_of_Votes DESC
LIMIT 10;

-- Top directors by average rating (min 3 movies)
SELECT Director,
       COUNT(*) AS movies,
       ROUND(AVG(IMDB_Rating), 2) AS avg_rating
FROM imdb_movies
WHERE IMDB_Rating IS NOT NULL
GROUP BY Director
HAVING COUNT(*) >= 3
ORDER BY avg_rating DESC
LIMIT 10;

-- Revenue by decade
SELECT
  (Released_Year DIV 10) * 10 AS decade,
  COUNT(*) AS movies,
  SUM(Gross) AS total_gross
FROM imdb_movies
WHERE Released_Year IS NOT NULL
GROUP BY decade
ORDER BY decade;

-- Genre performance
SELECT Genre,
       COUNT(*) AS movies,
       ROUND(AVG(IMDB_Rating), 2) AS avg_rating,
       SUM(Gross) AS total_gross
FROM imdb_movies
GROUP BY Genre
ORDER BY total_gross DESC;

