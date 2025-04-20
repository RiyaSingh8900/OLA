# 🚕 Ola Data Analyst Project

This project is a complete case study on Ola ride bookings data using SQL and Power BI. The dataset simulates 1 lakh+ booking records for Bengaluru city. The aim is to analyze booking patterns, customer behavior, cancellations, ratings, and revenue insights.

---

## 📊 Tools Used
- SQL (MySQL / PostgreSQL)
- Power BI
- Excel / CSV

---

## 📁 Dataset Description

- **Rows**: 1,00,000+
- **City**: Bengaluru
- **Time Period**: 1 month
- **Columns**: 
  - Booking ID, Customer ID, Booking Status, Vehicle Type
  - Pickup & Drop Locations
  - Booking Value, Ride Distance, Ratings
  - Cancellation reasons, Payment Method

---

## 🎯 Project Objective

- Analyze the performance of Ola rides based on vehicle type and booking status
- Identify cancellation trends and reasons from both customers and drivers
- Compare customer vs driver ratings across vehicle types
- Analyze booking values and revenue based on payment methods
- Visualize all insights using an interactive Power BI dashboard

---

## 🧠 SQL Analysis Performed

Some key tasks completed:

- Top 5 customers with the highest number of rides
- Average ride distance per vehicle type
- All incomplete rides with reasons
- Total booking value of successful rides
- Rides cancelled by driver due to "Personal & Car related issue"
- Ratings comparison (max & min for Prime Sedan)

💡 **Sample Query:**
```sql
SELECT Vehicle_Type, AVG(Ride_Distance) AS Average_Distance
FROM ola_booking
GROUP BY Vehicle_Type;

📊 Download the full Power BI Dashboard: [ola_dashboard.pbix](./ola_dashboard.pbix)
