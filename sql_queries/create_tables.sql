CREATE DATABASE IF NOT EXISTS playstore_db;
USE playstore_db;

CREATE TABLE playstore_apps (
    app_name VARCHAR(255),
    category VARCHAR(100),
    rating DECIMAL(3,2),
    reviews VARCHAR(50),
    size VARCHAR(50),
    installs VARCHAR(50),
    type VARCHAR(10),
    price VARCHAR(20),
    content_rating VARCHAR(50),
    genres VARCHAR(100),
    last_updated VARCHAR(50),
    current_version VARCHAR(50),
    android_version VARCHAR(50)
);

CREATE TABLE app_reviews (
    app_name VARCHAR(255),
    translated_review TEXT,
    sentiment VARCHAR(20),
    sentiment_polarity DECIMAL(4,2),
    sentiment_subjectivity DECIMAL(4,2)
);

