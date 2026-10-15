create database ola;
use ola;
# 1 Retreive all successful bookings
select * from bookings where Booking_Status = "Success";
select * from bookings;
desc bookings;

# 2 find the average ride distance for each vehicle type:
select Vehicle_Type, avg(Ride_Distance) as avg_distance from bookings
group by Vehicle_Type;

# 3 Get the total number of canceled by the customers
select count(*) from bookings where Booking_Status = "Canceled by Customer";

# 4 List the top 5 customer who booked the highest numbers of ride;
select Customer_ID, count(Booking_ID) as total_rides from bookings
group by Customer_ID
order by total_rides desc limit 5;

# 5 Get the number of ride canceled by drivers due to personal and car related issues :
select count(*) from bookings where Canceled_Rides_by_Driver = "Personal & Car ralated issue";

#6 find maximum and minimum driver rating for prime sedan booking :
select max(Driver_Ratings) max_rating,
min(Driver_Ratings) min_rating
from bookings where Vehicle_Type = "Prime Sedan";

# Retreive all ride where payment using upi:
select * from bookings where Payment_Method = "UPI";

# 8 find the avg customer rating per vehicle type :
select Vehicle_Type, avg(Customer_Rating) as avg_customer_rating
from bookings
group by Vehicle_Type;

# 9 calculate the total booking value of rides completed successfully :
select * from bookings;
select count(*) from bookings as total_rides_complete_successfully where Booking_Status = "Success";

# 10 list all incomplete ride with their reason :
select Booking_ID , Incomplete_Rides_Reason from bookings where Incomplete_Rides = "Yes";


