USE playstore_db;

SELECT app_name, installs
FROM playstore_apps
WHERE installs IS NOT NULL
ORDER BY installs DESC
LIMIT 70;

SELECT DISTINCT app_name, installs
FROM playstore_apps
WHERE installs >= 1000000000;


SELECT category, SUM(installs) AS total_installs
FROM playstore_apps
WHERE installs IS NOT NULL
GROUP BY category
ORDER BY total_installs DESC;

SELECT type, ROUND(AVG(rating), 2) AS avg_rating, COUNT(*) AS app_count
FROM playstore_apps
WHERE rating IS NOT NULL
GROUP BY type;


SELECT genres, ROUND(AVG(rating), 2) AS avg_rating, COUNT(*) AS app_count
FROM playstore_apps
WHERE rating IS NOT NULL
GROUP BY genres
HAVING app_count > 10
ORDER BY avg_rating DESC
LIMIT 10;



SELECT 
  CASE
    WHEN price = 0 THEN 'Free'
    WHEN price <= 1 THEN '$0.01–$1'
    WHEN price <= 5 THEN '$1.01–$5'
    WHEN price <= 10 THEN '$5.01–$10'
    ELSE 'Over $10'
  END AS price_range,
  ROUND(AVG(rating), 2) AS avg_rating,
  COUNT(*) AS app_count
FROM playstore_apps
WHERE rating IS NOT NULL
GROUP BY price_range
ORDER BY avg_rating DESC;




SELECT sentiment, COUNT(*) AS total_reviews
FROM app_reviews
GROUP BY sentiment
ORDER BY total_reviews DESC;


SELECT app_name, COUNT(*) AS positive_review_count
FROM app_reviews
WHERE sentiment = 'Positive'
GROUP BY app_name
ORDER BY positive_review_count DESC
LIMIT 10;

