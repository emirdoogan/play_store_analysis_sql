# 📱 Google Play Store SQL Analysis

This project presents an exploratory SQL-based analysis of the **Google Play Store dataset** using **MySQL Workbench**. The study investigates patterns in app ratings, installs, monetization strategies, user sentiment, and genre-based performance to derive key insights for developers, marketers, and product strategists.

---

## 🎯 Project Objectives

- Identify top-performing apps based on **installs and ratings**.
- Compare **free vs. paid** apps in terms of user satisfaction.
- Discover which **genres** attract higher engagement and better ratings.
- Analyze **price vs. satisfaction** trends.
- Use **sentiment analysis** to evaluate user feedback tone.

---

## 🗂️ Dataset Overview

- **Dataset Title:** Google Play Store Apps  
- **Source:** [Kaggle – Lavanya Gupta](https://www.kaggle.com/datasets/lava18/google-play-store-apps)  
- **License:** [Creative Commons Attribution 3.0](http://creativecommons.org/licenses/by/3.0/)  
- **Sample Size:** Apps + User reviews (in separate tables)

---

## 🛠️ Tools & Technologies

- **SQL:** MySQL (via MySQL Workbench)
- **Documentation:** Google Docs
- **Version Control:** GitHub
- **Data Structure:** Normalized schema with two tables:  
  - `playstore_apps` – App metadata  
  - `app_reviews` – Sentiment-labeled user reviews

---

## 🧼 Data Cleaning & Preparation

- Removed special characters from `installs` and `price` fields
- Standardized missing values (`NaN`, `0`, etc.) in categorical fields like `type` and `rating`
- Converted `last_updated` to DATE format
- Dropped invalid or incomplete records from review dataset

---

## 🔍 Key Findings

### 📥 1. Most Installed Apps
- 20 apps have **1B+ installs**, dominated by **Google** products.
- Games and messaging apps (e.g., **WhatsApp, Facebook, Subway Surfers**) are massively popular.

### 📊 2. Categories with Largest User Bases
- **GAME** (35B installs)
- **COMMUNICATION** (32.6B)
- **PRODUCTIVITY** and **SOCIAL** also rank high
- Reflect user priorities: entertainment, connectivity, and utility

### ⭐ 3. Paid vs. Free Apps – Rating Comparison
- **Paid apps:** Average rating 4.27  
- **Free apps:** Average rating 4.19  
- Paid apps slightly outperform in quality perception, though free apps dominate volume.

### 🎮 4. Top Genres by User Satisfaction
- **Casual games**, **events**, and **word games** perform best
- Genres that combine **engagement + utility** receive higher ratings

### 💸 5. Price vs. Rating
- Best-rated range: **$0.01 – $1.00**
- Ultra-expensive apps (>$10) have **lower satisfaction**

### 😊 6. Sentiment Analysis of User Reviews
- **Positive:** ≈ 82%  
- **Neutral:** ≈ 12%  
- **Negative:** ≈ 5%  
- General emotional tone is overwhelmingly positive

### 🔍 7. App with Highest Positive Reviews
- **"10 Best Foods for You"** leads with **154 positive reviews**

---

## 🧾 Conclusion

This analysis demonstrates the power of structured SQL to uncover insights in app ecosystems. Through meticulous data cleaning and relational modeling, the project reveals patterns in:

- User preferences  
- Monetization effectiveness  
- Emotional tone of reviews  
- Genre performance

These insights can guide strategic decisions in app development, marketing, and platform optimization.

---

## 📄 License

This project follows the [Creative Commons Attribution 3.0](http://creativecommons.org/licenses/by/3.0/) license, as required by the dataset source.

---

## ✍️ Author

**Emir Doğan**  

---
