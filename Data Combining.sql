#combining all 12 months of data into one table#

CREATE TABLE `top-aloe-468816-u0.cyclistic.cyclistic_2021_tripdata` AS
SELECT * FROM `top-aloe-468816-u0.cyclistic.jan2021`
UNION ALL
SELECT * FROM `top-aloe-468816-u0.cyclistic.fe2021`
UNION ALL
SELECT * FROM `top-aloe-468816-u0.cyclistic.mar2021`
UNION ALL
SELECT * FROM `top-aloe-468816-u0.cyclistic.apr2021`
UNION ALL
SELECT * FROM `top-aloe-468816-u0.cyclistic.may2021`
UNION ALL
SELECT * FROM `top-aloe-468816-u0.cyclistic.june2021`
UNION ALL
SELECT * FROM `top-aloe-468816-u0.cyclistic.july2021`
UNION ALL
SELECT * FROM `top-aloe-468816-u0.cyclistic.aug2021`
UNION ALL
SELECT * FROM `top-aloe-468816-u0.cyclistic.sept2021`
UNION ALL
SELECT * FROM `top-aloe-468816-u0.cyclistic.oct2021`
UNION ALL
SELECT * FROM `top-aloe-468816-u0.cyclistic.nov2021`
UNION ALL
SELECT * FROM `top-aloe-468816-u0.cyclistic.dec2021`
