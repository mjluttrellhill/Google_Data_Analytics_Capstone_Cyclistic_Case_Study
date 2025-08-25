
#checking for number of NULL values in all columns##

SELECT  COUNT(*) - COUNT(ride_id) ride_id,
 COUNT(*) - COUNT(rideable_type) rideable_type,
 COUNT(*) - COUNT(started_at) started_at,
 COUNT(*) - COUNT(ended_at) ended_at,
 COUNT(*) - COUNT(start_station_name) start_station_name,
 COUNT(*) - COUNT(start_station_id) start_station_id,
 COUNT(*) - COUNT(end_station_name) end_station_name,
 COUNT(*) - COUNT(end_station_id) end_station_id,
 COUNT(*) - COUNT(start_lat) start_lat,
 COUNT(*) - COUNT(start_lng) start_lng,
 COUNT(*) - COUNT(end_lat) end_lat,
 COUNT(*) - COUNT(end_lng) end_lng,
 COUNT(*) - COUNT(member_casual) member_casual
FROM `top-aloe-468816-u0.cyclistic.cyclistic_2021_tripdata`;


##checking duplicate ride_id rows##
SELECT COUNT(ride_id) - COUNT(DISTINCT ride_id) AS duplicate_rows
FROM `top-aloe-468816-u0.cyclistic.cyclistic_2021_tripdata`;

##start_station_name, start_station_id missing information##
SELECT DISTINCT start_station_name
FROM `top-aloe-468816-u0.cyclistic.cyclistic_2021_tripdata`
ORDER BY start_station_name;

SELECT COUNT(ride_id) AS rows_with_start_station_null
FROM `top-aloe-468816-u0.cyclistic.cyclistic_2021_tripdata`
WHERE start_station_name IS NULL OR start_station_id IS NULL;

##end_station_name, end_station_id missing information##
SELECT DISTINCT end_station_name
FROM `top-aloe-468816-u0.cyclistic.cyclistic_2021_tripdata`
ORDER BY end_station_name;

SELECT COUNT(ride_id) AS rows_with_null_end_station
FROM `top-aloe-468816-u0.cyclistic.cyclistic_2021_tripdata`
WHERE end_station_name IS NULL OR end_station_id IS NULL;

##end_lat, end_lng missing information##
SELECT COUNT(ride_id) AS rows_with_null_end_loc
FROM `top-aloe-468816-u0.cyclistic.cyclistic_2021_tripdata`
WHERE end_lat IS NULL OR end_lng IS NULL;


