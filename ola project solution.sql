SELECT * FROM ola_booking;

--	Questions--
1. Retrieve all successful bookings:
   Create View Successful_Booking as
   SELECT * FROM ola_booking
   WHERE booking_status = 'Success'; 
   

2. Find the average ride distance for each vehicle type:
  CREATE VIEW ride_distance_for_each_vehicle AS
  SELECT vehicle_type, AVG(ride_distance) AS Average_distance
   FROM ola_booking
   GROUP BY vehicle_type;
  SELECT * FROM ride_distance_for_each_vehicle;

3. Get the total number of cancelled rides by customers:
   CREATE VIEW cancelled_rides_by_customers AS
   SELECT COUNT(*)
   FROM ola_booking
   WHERE Booking_Status= 'Canceled by Customer';
   SELECT * FROM cancelled_rides_by_customers;

4. List the top 5 customers who booked the highest number of rides:
   CREATE VIEW top_5_costumer AS
   SELECT Customer_ID, COUNT(Booking_ID) AS total_rides
   FROM ola_booking
   GROUP BY Customer_ID
   ORDER BY total_rides DESC LIMIT 5;
   SELECT * FROM top_5_costumer;
 
5. Get the number of rides cancelled by drivers due to personal and car-related issues:
   CREATE VIEW ride_cancelled_by_drivers AS
   SELECT COUNT(*) FROM ola_booking
   WHERE Canceled_Rides_by_Driver = 'Personal & Car related issue';
   SELECT * FROM ride_cancelled_by_drivers;
   

6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
   CREATE VIEW Min_Max_Driver_Rating AS
   SELECT MAX(driver_ratings) as Max_rating ,
          MIN(driver_ratings) as Min_rating
   FROM ola_booking
   WHERE Vehicle_Type = 'Prime Sedan';
   SELECT * FROM Min_Max_Driver_Rating;

7. Retrieve all rides where payment was made using UPI:
   CREATE VIEW Payment_Method AS
   SELECT * FROM ola_booking
   WHERE payment_method = 'UPI';
   SELECT * FROM Payment_Method;


8. Find the average customer rating per vehicle type:
    CREATE VIEW average_customer_rating_per_vehicle_type AS
    SELECT vehicle_type, AVG(Customer_rating) as Average_Customer_Rating
	FROM ola_booking
	GROUP BY vehicle_type;
	SELECT * FROM average_customer_rating_per_vehicle_type;
	

9. Calculate the total booking value of rides completed successfully:
    CREATE VIEW total_booking_value_of_rides_completed AS
	SELECT SUM(booking_value) as total_successfull_value
	FROM ola_booking
	WHERE booking_status = 'Success'; 
	SELECT * FROM total_booking_value_of_rides_completed;


10. List all incomplete rides along with the reason:
    CREATE VIEW incomplete_rides_reason AS
    SELECT booking_ID, incomplete_rides_reason 
	FROM ola_booking
	WHERE incomplete_rides = 'Yes';
	SELECT * FROM incomplete_rides_reason;
	
 
