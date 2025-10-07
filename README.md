# Logistics Optimization (Routes and Fleet): Case Study in Reducing Delivery Overcosts

<img width="1280" height="720" alt="Imagen_logistic" src="https://github.com/user-attachments/assets/900ea6c4-5aa5-41b9-b50f-f5910fa56310" />

### Executive Summary

This project addresses operational inefficiency and high logistical costs within the fuel dispatch fleet through KPI-driven data analysis. By utilizing robust SQL queries and the Python ecosystem, two primary sources of inefficiency were identified: route deviation and high fuel consumption per truck. The analysis demonstrated that the route to customer PetroSur S.A. generates 60.07% of additional kilometers per delivery, while Truck 3 is the most expensive to operate. The final recommendations focus on immediate route optimization and fleet asset management, aiming to significantly reduce operational costs and improve delivery punctuality.

### Business Problem

Identify the specific trucks, routes, and customers that are contributing to excessive delivery times or elevated fuel costs per delivery.

### Methodology

Python was used to execute queries against the company's SQL Server database, facilitating the creation of visualizations and in-depth analysis.

To quickly pinpoint inefficiency, the analysis began by examining three key Key Performance Indicators (KPIs): time efficiency or delivery duration, cost efficiency based on fuel consumption, and efficiency per truck. Finally, the most critical metric, the percentage of delivery route deviation for each customer, was calculated using the following formula:

Deviation Index= Actual Distance Traveled−(Theoretical Distance×2) / (Theoretical Distance×2)
​ 
### Skills

Database Connection: Python
Querying: SQL Server and Pandas
Visualization: Matplotlib and Seaborn

### Results and Business Recommendations

- The route to PetroSur S.A. has a route deviation index of 60.07%, covering 108.13 additional kilometers per delivery and exceeding the Time Efficiency of 1.2 min/km.

Recommendation: Enforce immediate route replanning or implement a penalty system for the carrier/driver.

- Truck 3 is the most costly asset, with an average consumption per delivery of $425.6. It also has a higher average distance per delivery (203.5 km) and longer travel time (308.0 min) compared to trucks 1 and 2.

Recommendation: Prioritize maintenance or sale of Truck 3 and reassign long-haul routes to Truck 1 or 2.

- Truck 3 was involved in 62.5% of the deliveries made to the customer PetroSur S.A., significantly impacting the high-cost route.

- $240 could be added to the company's profit per delivery if the proposed recommendations are implemented.

### Next Steps

Develop a machine learning model (e.g., Logistic Regression or Random Forest) to assign an inefficiency risk index to each new route assignment, based on the combination of truck, customer, and time of day.


