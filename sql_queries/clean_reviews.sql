USE playstore_db;
DELETE FROM app_reviews
WHERE LOWER(TRIM(sentiment)) = 'nan'
   OR LOWER(TRIM(translated_review)) = 'nan'
   OR LOWER(TRIM(sentiment_polarity)) = 'nan'
   OR LOWER(TRIM(sentiment_subjectivity)) = 'nan';


DELETE FROM app_reviews
WHERE sentiment IS NULL
   OR sentiment_polarity IS NULL
   OR sentiment_subjectivity IS NULL;
