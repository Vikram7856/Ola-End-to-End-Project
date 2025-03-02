USE ola;


CREATE TABLE Bookings(
Date TEXT,
Time	TEXT,
Booking_ID	TEXT,
Booking_Status	TEXT,
Customer_ID	TEXT,
Vehicle_Type TEXT,
Pickup_Location	TEXT,
Drop_Location	TEXT,
V_TAT TEXT,	
C_TAT	TEXT,
Canceled_Rides_by_Customer	TEXT,
Canceled_Rides_by_Driver	TEXT,
Incomplete_Rides	TEXT,
Incomplete_Rides_Reason	TEXT,
Booking_Value	TEXT,
Payment_Method	TEXT,
Ride_Distance	TEXT,
Driver_Ratings	TEXT,
Customer_Rating	TEXT

);

SELECT * FROM bookings;

DROP VIEW IF EXISTS successful_booking;
CREATE VIEW successful_booking AS
SELECT * FROM bookings
WHERE Booking_Status = 'Success';

DROP VIEW IF EXISTS average_ride_per_vehicle_type;
CREATE VIEW average_ride_per_vehicle_type AS
SELECT Vehicle_Type,
       ROUND(AVG(Ride_Distance),2) AS average_ride_distance
FROM bookings
GROUP BY Vehicle_Type
ORDER BY ROUND(AVG(Ride_Distance),2) DESC ;

DROP VIEW IF EXISTS no_of_cancelled_rides_by_customer;
CREATE VIEW no_of_cancelled_rides_by_customer AS
SELECT COUNT(*) AS no_of_cancelled_rides FROM bookings
WHERE Booking_Status = 'Canceled by Customer';

CREATE VIEW top_5_customer AS
SELECT Customer_ID,
      COUNT(Booking_ID) AS no_of_bookings 
FROM bookings
GROUP BY Customer_ID
ORDER BY COUNT(Booking_ID) DESC
LIMIT 5;

CREATE VIEW ride_cancelled_due_to_PCR AS
SELECT COUNT(Booking_ID) AS no_of_cancelled_rides FROM bookings
WHERE Booking_Status = 'Canceled by Driver' AND Canceled_Rides_by_Driver = 'Personal & Car related issue';

CREATE VIEW max_min_driver_rating_of_prime_sedan AS
SELECT Vehicle_Type,
       MAX(Driver_Ratings) AS maximum_driver_rating,
	   MIN(Driver_Ratings) AS minimum_driver_rating
FROM bookings
WHERE Vehicle_Type = 'Prime Sedan';

CREATE VIEW upi_payment AS
SELECT * FROM bookings
WHERE Payment_Method = 'UPI';

CREATE VIEW avg_rating_per_vehicle AS
SELECT Vehicle_Type,
       ROUND(AVG(Customer_Rating),2) AS average_rating
 FROM bookings
 GROUP BY Vehicle_Type
 ORDER BY  ROUND(AVG(Customer_Rating),2) DESC;
 
 
  CREATE VIEW total_booking_value_of_rides AS
 SELECT SUM(Booking_Value) AS total_booking_value FROM bookings
 WHERE Booking_Status = 'Success';
 
  CREATE VIEW incomplete_rides_reason AS
 SELECT Booking_ID, Incomplete_Rides_Reason FROM bookings
 WHERE Incomplete_Rides = 'Yes' AND Incomplete_Rides_Reason IS NOT NULL ;


/*1. Retrieve all successful bookings:*/
SELECT * FROM successful_booking;

/*2. Find the average ride distance for each vehicle type:*/
SELECT * FROM average_ride_per_vehicle_type;

/*3. Get the total number of cancelled rides by customers:*/
SELECT * FROM no_of_cancelled_rides_by_customer;

/*4. List the top 5 customers who booked the highest number of rides:*/
SELECT * FROM top_5_customer;

/*5. Get the number of rides cancelled by drivers due to personal and car-related issues:*/
SELECT * FROM ride_cancelled_due_to_PCR;

/*6. Find the maximum and minimum driver ratings for Prime Sedan bookings:*/
SELECT * FROM max_min_driver_rating_of_prime_sedan ;

/*7. Retrieve all rides where payment was made using UPI:*/
SELECT * FROM upi_payment;

/*8. Find the average customer rating per vehicle type:*/
SELECT * FROM avg_rating_per_vehicle;
 
 /* 9. Calculate the total booking value of rides completed successfully: */
 SELECT * FROM total_booking_value_of_rides;
 
/* 10. List all incomplete rides along with the reason: */
 SELECT * FROM incomplete_rides_reason;