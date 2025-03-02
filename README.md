# Ola Ride Dataset Analysis

## 📌 Project Overview  
This project focuses on analyzing ride-hailing data from **Ola**, one of India’s leading mobility services. The dataset provides insights into ride bookings, cancellations, ride completion rates, customer and driver behaviors, and other key performance metrics. This dataset contains **one month of Ride data from Ola**, covering the period **from July 1, 2024, to July 30, 2024**. 

Through **data analysis, visualization, and MYSQL Query**, this project aims to uncover trends in **ride efficiency, cancellation reasons, vehicle demand, and user satisfaction**.  

### **📅 Time Frame**  
- **Start Date:** 01-07-2024  
- **End Date:** 30-07-2024  
- **Duration:** 1 month  
---

## 📊 Dataset Description  

The dataset consists of multiple features that capture critical aspects of the ride-booking process, including:  

### 🏷 1. Ride Booking Details  
- **Date & Time** – When the booking was made  
- **Booking ID** – Unique identifier for each booking  
- **Booking Status** – Whether the ride was completed, canceled, or left incomplete  
- **Customer ID** – Unique identifier for each customer  

### 🚗 2. Vehicle Types  
Ola offers multiple vehicle options, and the dataset includes:  
- **Auto** (Three-wheeler)  
- **Prime Plus** (Premium cars)  
- **Prime Sedan** (Comfortable 4-seater cars)  
- **Mini** (Compact cars)  
- **Bike** (Two-wheeler rides)  
- **eBike** (Electric two-wheelers)  
- **Prime SUV** (Large SUV rides)  

### 📍 3. Location Details  
- **Pickup Location** – Pickup locations from Bangalore  
- **Drop Location** – Selected from the same set of pickup locations  

### ⏳ 4. Time Metrics  
- **Average VTAT (Vehicle Time to Arrive)** – Time taken for the assigned vehicle to reach the pickup point  
- **Average CTAT (Customer Time to Arrive)** – Time taken for the customer to reach the vehicle after arrival  

### ❌ 5. Canceled Rides & Reasons  

#### 🔴 Customer Cancellations  
Customers may cancel rides due to various reasons, including:  
- Driver is not moving towards the pickup location  
- Driver asked to cancel  
- AC is not working (only for 4-wheelers)  
- Change of plans  
- Wrong address entered  

#### 🔵 Driver Cancellations  
Drivers may cancel due to:  
- Personal & vehicle-related issues  
- Customer-related issues  
- The customer appeared sick or was coughing  
- More passengers than the allowed limit  

### 🚫 6. Incomplete Rides  
A ride may start but not reach the drop location due to:  
- **Customer demand** (e.g., early drop-off)  
- **Vehicle breakdown**  
- **Other unforeseen issues**  

### 💰 7. Ride Metrics  
- **Booking Value** – The amount paid for the ride  
- **Ride Distance** – The total distance covered in the ride  

### ⭐ 8. User Experience Metrics  
- **Driver Ratings** – Rating given to the driver by the customer  
- **Customer Ratings** – Rating given to the customer by the driver


# 📊 Key Insights from Dataset Analysis  

## 🚫 Ride Cancellations  
### 🔴 Customer Cancellations  
- **29.31%** of cancellations were due to **drivers not moving** towards the pickup location.  
- **15.38%** of cancellations were due to **AC not working** (only for four-wheelers).  

### 🔵 Driver Cancellations  
- **34.56%** of cancellations were due to **personal and car-related issues**.  

### 📉 Overall Cancellation Rate  
- **28.10%** of total bookings were canceled.  

---

## 💳 Payment Trends  
- 💰 **Highest number of payments were made via:** **CASH**.  
- 🏦 **The second highest payment method was:** **UPI**.  

---

## 🚗 Vehicle Preference  
- 🏆 **Most preferred four-wheeler:** **Prime Sedan** 🚗  
- 🥈 **Second highest preferred four-wheeler:** **Prime SUV** 🚙  
- 🏍 **Most single-person riders chose:** **E-Bike** for their rides.  

---

## 📌 Booking Status Breakdown  
- ❌ **Cancelled by Driver:** **17.91%**  
- ❌ **Cancelled by Customer:** **10.20%**  
- ⚠️ **Driver Not Found:** **9.90%**  

 
The findings can help **companies optimize operations, reduce cancellations, and improve customer satisfaction.**  

---

# 📌 Business Recommendations  

### 🚗 Reduce Customer Cancellations  
✅ Optimize **driver allocation algorithms** to ensure drivers move towards pickup locations.  
✅ Improve **vehicle maintenance** (especially AC in four-wheelers).  

### 💳 Encourage Digital Payments  
✅ Promote **UPI & card payments** to reduce cash dependency.  

### 🏍 Increase E-Bike Availability  
✅ Since **single riders prefer E-Bikes**, increasing their availability could improve efficiency.  




