USE playstore_db;

UPDATE playstore_apps
SET installs = REPLACE(REPLACE(installs, '+', ''), ',', '');

ALTER TABLE playstore_apps
MODIFY COLUMN installs BIGINT;

UPDATE playstore_apps
SET price = REPLACE(price, '$', '')
WHERE price IS NOT NULL;

UPDATE playstore_apps
SET price = NULL
WHERE LOWER(TRIM(price)) IN ('nan', 'na', '');

ALTER TABLE playstore_apps
MODIFY COLUMN price DECIMAL(6,2);

UPDATE playstore_apps
SET reviews = NULL
WHERE LOWER(TRIM(reviews)) IN ('nan', 'na', '');

ALTER TABLE playstore_apps
MODIFY COLUMN reviews BIGINT;

DELETE FROM playstore_apps
WHERE type = '0';

UPDATE playstore_apps
SET type = NULL
WHERE LOWER(TRIM(type)) IN ('nan', 'na', '');

UPDATE playstore_apps
SET rating = NULL
WHERE LOWER(TRIM(rating)) IN ('nan', 'na', '');



ALTER TABLE playstore_apps
ADD COLUMN last_updated_temp DATE;

UPDATE playstore_apps
SET last_updated_temp = STR_TO_DATE(last_updated, '%M %d, %Y');

ALTER TABLE playstore_apps
DROP COLUMN last_updated;

ALTER TABLE playstore_apps
CHANGE COLUMN last_updated_temp last_updated DATE;





