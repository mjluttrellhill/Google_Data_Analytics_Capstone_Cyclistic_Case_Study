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
- Data visualization - [Tableau](https://public.tableau.com/app/profile/hui.min.ho/viz/CyclisticBikeShareCaseStudy_16931448059910/Sheet1#2)

**Microsoft Excel: Initial Data Cleaning**
To begin, I downloaded all 12 of the zip files and unzipped them. I saved the .XLS files in a folder on my desktop. I then added columns for ride_length to calculate the length of each ride by subtracting the column started_at from the column ended_at, and formatted the column as Time > HH:MM:SS (37:30:55). Next I created a column to determine the day of the week that each ride started using the WEEKDAY command, labeled day_of_week. This column has been formatted as a number with no decimals, noting that 1 = Sunday and 7 = Saturday. After adding this information, I saved each file as a .CSV on my desktop for further analysis.

**Data Combining** (https://github.com/mjluttrellhill/Google_Data_Analytics_Capstone_Cyclistic_Case_Study/blob/main/Data%20Combining.sql)
The 12 tables from January 2021 to December 2021 were stacked and combined into a single table. The table consists of 5,667,717 rows.



