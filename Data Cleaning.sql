##creating new table with clean data##

CREATE OR REPLACE TABLE `top-aloe-468816-u0.cyclistic.cyclistic_2021_clean_data` AS
SELECT 
  t1.ride_id,
  t1.rideable_type,
  t1.started_at,
  t1.ended_at,
  t2.ride_length_in_mins AS ride_length,
  FORMAT_TIMESTAMP('%B', t1.started_at) AS month,
  FORMAT_TIMESTAMP('%A', t1.started_at) AS day_of_week,
  t1.start_station_name,
  t1.start_station_id,
  t1.end_station_name,
  t1.end_station_id,
  t1.start_lat,
  t1.start_lng,
  t1.end_lat,
  t1.end_lng,
  t1.member_casual
FROM `top-aloe-468816-u0.cyclistic.cyclistic_2021_tripdata` AS t1
JOIN (
  SELECT ride_id,
         TIMESTAMP_DIFF(ended_at, started_at, MINUTE) AS ride_length_in_mins
  FROM `top-aloe-468816-u0.cyclistic.cyclistic_2021_tripdata`
) AS t2
USING(ride_id)
WHERE t2.ride_length_in_mins > 1
  AND t2.ride_length_in_mins < 1440
  AND t1.start_station_name IS NOT NULL
  AND t1.start_station_id IS NOT NULL
  AND t1.end_station_name IS NOT NULL
  AND t1.end_station_id IS NOT NULL
  AND t1.start_lat IS NOT NULL
  AND t1.start_lng IS NOT NULL
  AND t1.end_lat IS NOT NULL
  AND t1.end_lng IS NOT NULL;