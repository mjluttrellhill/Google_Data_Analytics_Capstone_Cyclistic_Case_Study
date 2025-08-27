# Google_Data_Analytics_Capstone_Cyclistic_Case_Study

## Introduction
This is the final capstone project for the Google Data Analytics Certification. In this study, I will follow the data analysis process which I learned from the course: ask, prepare, process, analyze, share, and act.

## Scenario
I am assuming the role of a junior data analyst working on the marketing analyst team at Cyclistic. The director of marketing believes the company's future success depends on maximizing the number of annual memberships. Therefore, the team wants to understand how casual riders and annual members use Cyclistic bikes differently. From these insights, the team will design a new marketing strategy to convert casual riders into annual members.

## Background
Cyclistic is a bike sharing company based in Chicago that launched a successful bike-sharing program in 2016. Over the years, the program has expanded to include a fleet of 5,824 bicycles and a network of 692 stations which are geotracked and locked throughout the Chicago area. The majority of Cyclistic riders use the bicycles for leisurely, while about 30% use the bicycles to commute to work daily.

Until now, Cyclistic’s marketing strategy relied on building general awareness and appealing to broad consumer segments. One approach that helped make these things possible was the flexibility of its pricing plans: single-ride passes, full-day passes, and annual memberships. Customers who purchase single-ride or full-day passes are referred to as casual riders. Customers who purchase annual memberships are Cyclistic members.  
  
Cyclistic’s finance analysts have concluded that annual members are much more profitable than casual riders. Although the pricing flexibility helps Cyclistic attract more customers, Moreno (the director of marketing and my manager) believes that maximizing the number of annual members will be key to future growth. Rather than creating a marketing campaign that targets all-new customers, Moreno believes there is a very good chance to convert casual riders into members. She notes that casual riders are already aware of the Cyclistic program and have chosen Cyclistic for their mobility needs.  

Moreno has set a clear goal: Design marketing strategies aimed at converting casual riders into annual members. In order to do that, however, the marketing analyst team needs to better understand how annual members and casual riders differ, why casual riders would buy a membership, and how digital media could affect their marketing tactics. Moreno and her team are interested in analyzing the Cyclistic historical bike trip data to identify trends.  

## Step 1: Ask
**Business Task -** design marketing strategies to convert casual riders to members by understanding how annual and casual riders differ, why casual riders would buy a membership, and how digital media could affect their marketing tactics.<br>

Three questions will guide the future marketing program:  
1. How do annual members and casual riders use Cyclistic bikes differently?  
2. Why would casual riders buy Cyclistic annual memberships?  
3. How can Cyclistic use digital media to influence casual riders to become members?  

Moreno has assigned me the first question to answer: How do annual members and casual riders use Cyclistic bikes differently?

## Step 2: Prepare
**Data Source:** [divvy-tripdata](https://divvy-tripdata.s3.amazonaws.com/index.html) <br>
[Note that the data has been made available by Motivate International Inc. under this [<ins>license</ins>](https://www.divvybikes.com/data-license-agreement).]

**Data Organization:** There are 12 files that are publicly available with naming convention of YYYYMM-divvy-tripdata and each file includes information for one month. The corresponding column names are ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng and member_casual.  It is structured data, organized in rows and columns. Each record represents one trip, and each trip has a unique field that identifies it: ride_id (primary key). For the purpose of my analysis, I will use the files from January 2021 to December 2021.

## Step 3: Process
**Tools:** <br>
- Data cleaning & processing - Microsoft Excel and SQL on Google Big Query 
- Data visualization - Tableau Public

**Microsoft Excel: Initial Data Cleaning**
To begin, I downloaded all 12 of the zip files and unzipped them. I saved the .XLS files in a folder on my desktop. I then added columns for ride_length to calculate the length of each ride by subtracting the column started_at from the column ended_at, and formatted the column as Time > HH:MM:SS (37:30:55). Next I created a column to determine the day of the week that each ride started using the WEEKDAY command, labeled day_of_week. This column has been formatted as a number with no decimals, noting that 1 = Sunday and 7 = Saturday. After adding this information, I saved each file as a .CSV on my desktop for further analysis.

**Data Combining** <br>
[Data Combining](https://github.com/mjluttrellhill/Google_Data_Analytics_Capstone_Cyclistic_Case_Study/blob/main/Data%20Combining.sql)

The 12 tables from January 2021 to December 2021 were stacked and combined into a single table. The table consists of 5,595,063 rows.

**Data Exploration**<br>
[Data Exploration](https://github.com/mjluttrellhill/Google_Data_Analytics_Capstone_Cyclistic_Case_Study/blob/main/Data%20Exploration.sql)
Before cleaning the data, I explored the data to determine if there were any inconsistencies.

The first exploration I made was for columns with null values. While both start_station_id and end_station_id have many null values, ride_id which is the table's primary key has zero. Therefore, I deduced that perhaps these were bikes that had been abandoned and did not start at a specific checkpoint.

Since ride_id has no null values, I then checked for duplicates. As the query shows, there are no duplicate rows.

The start_station_name and start_station_id columns have 690,809 rows of missing data and need to be removed as they are not needed for the current analysis.

The end_station_name and end_station_id columns have 739,190 rows of missing data and need to be removed as they are not needed for the current analysis.

The end_lat and end_lng columns have 4,771 rows of missing data and need to be removed as they are not needed for the current analysis.

**Data Cleaning**<br>
[Data Cleaning](https://github.com/mjluttrellhill/Google_Data_Analytics_Capstone_Cyclistic_Case_Study/blob/main/Data%20Cleaning.sql)

- All the rows with missing values are deleted
- 3 columns are added for ride_length for duration of the trip, day_of_week and month are added
- Trips with duration less that a minute or longer than a day are excluded
- Total of 1,120,129 rows are removed.

## Step 4: Analyze
[Data Analysis](https://github.com/mjluttrellhill/Google_Data_Analytics_Capstone_Cyclistic_Case_Study/blob/main/Data%20Analysis.sql)
The analysis question is:
>How do annual members and casual riders use Cyclistic bikes differently?

Now that the data is cleaned, I created tables to analyze and import into Tableau to visualize the users and how they each use the Cyclistic bicycles.

### Total Rides in 2021
Cyclistic members recorded a 55% usage rate in 2021, or a total of 2,462,525 rides. Casual riders recoreded a 45% usage rate in 2021, or a total of 2,012,409 rides.
<img width="336" height="203" alt="Sheet 1" src="https://github.com/user-attachments/assets/e3052447-968a-465e-9c64-6b206ce75a6d" />


### Types of Bikes
There are three types of bikes available for riders to use: classic, electric, and docked bicycles. Both Cyclistic members and casual riders show a preference of a classic bicycle over the electric bicycle. 
<img width="588" height="500" alt="Bike Types by Member Type" src="https://github.com/user-attachments/assets/4061488e-e361-41f9-b423-e396f25c30f8" />

### Trips Taken per Month
Both Cyclistic members and casual riders have the lowest activity, 33,635(members) and 8,465(casual) rides, in February 2021.
Cyclistic members have the highest activity, 322,994 rides, in August 2021.
Causal riders have the highest activity, 362,638 rides, in July 2021.
<img width="588" height="500" alt="Total Trips per Month" src="https://github.com/user-attachments/assets/520c882f-72a4-4857-82d7-a4498dcfc103" />

### Trips Taken per Day of the Week
Cyclistic members have the highest activity, 385,839 rides, on Wednesdays, with the lowest activity, 301,571 rides, on Sundays.
Casual riders have the highest activity, 460,235 rides, on Saturdays with the lowest activity, 211,217 rides, on Tuesdays.
<img width="588" height="500" alt="Total Trips per Day of Week" src="https://github.com/user-attachments/assets/81734b33-acec-452f-bb37-b889400f7f62" />

### Trips Taken per Hour
Both Cyclistic members and casual riders had the highest activity starting at 3PM through 6PM, with the highest activity at 5PM. 
<img width="588" height="500" alt="Total Trips per Hour" src="https://github.com/user-attachments/assets/ebac03f1-4349-4eaa-bdd4-ef26c7f1ca3d" />

### Average Ride Length per Month
The highest monthly average ride length for Cyclistic members is February of 2021, with an average of 15.01 minutes.
The highest monthly average ride length for casual riders is May 2021, with an average of 33.18 minutes.
<img width="588" height="500" alt="Avg Ride per Month" src="https://github.com/user-attachments/assets/9baacf49-60b6-4821-8e38-9453c6557309" />

## Average Ride Length per Day of the Week.
The highest daily average ride length for Cyclistic members is Sunday, with an average of 15.17 minutes.
The highest daily average ride length for casual riders is Sunday, with an average of 32.44 minutes.
<img width="588" height="500" alt="Avg Ride per DOW" src="https://github.com/user-attachments/assets/068fa4db-600c-45b0-aa8f-3e2578d4b95a" />

## Average Ride Length per Hour
Cyclistic members have the longest average ride length at 2PM, with a total of 13.80 minutes.
Casual riders have the longest average ride lenghth at 1PM, with a total of 32.35 minutes.<br>
<img width="588" height="500" alt="Avg Ride per Hour" src="https://github.com/user-attachments/assets/c21a04fd-40ff-4db4-8c7f-1e7817c2a0df" />

## Step 5: Share

The similarities and differences between Cyclistic members and casual riders are listed below.

**Similarities**<br>
- Both Cyclistic members and casual riders prefer riding bicycles in the spring and summer seasons (May to September). 
- Both Cyclistic members and casual riders prefer classic bikes over electric bikes.
- Both Cyclistic members and casual riders have a higher average ride duration on the weekend as compared to weekdays.

**Difference**
- Cyclistic members go on more rides than causal riders.
- Cyclistic members have shorter average ride lengths than casual riders.
- Cyclistic members show consistent rides throughout the week.
- Cyclistic casual riders tend to use the bikes more on the weekend than the weekdays.

## Step 6: ACT
After identifying the similarities and differences in member and casual riders, we can develop the following marketing strategies to convert casual riders to Cyclistic members.

- Membership Personalization:
  Provide a range of membership options: yearly, monthly, and daily. Users will be able to choose their membership based on their own use of the bicycles. By introducing short-term memberships, we can cater to the needs of riders who are not interested in a full annual membership.
  Organize member-exclusive events such as group rides, urban exploration challenges, or themed events. 
- Group Membership Discounts:
  Offering discounted plans for students, families, and executives can encourage collective memberships. It will also encourage bonds between the groups.
- Seasonal Campaigns
  Launch seasonal campaigns, such as, limited-time discounts, special weekday offers, or discounted extended ride prices during the high usage seasons of Spring and Summer.












