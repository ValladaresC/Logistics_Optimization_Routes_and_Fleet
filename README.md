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


# Optimización Logística (Rutas y Flota): Caso practico de reducción de sobrecostos en entregas.

### Resumen 

Este proyecto aborda la ineficiencia operativa y el sobrecosto logístico en la flota de despacho de combustible mediante un análisis de datos impulsado por KPI. Utilizando consultas SQL robustas y el ecosistema de Python, se identificaron dos fuentes principales de ineficiencia: desviación de ruta y alto consumo de combustible por camión. El análisis demostró que la ruta al cliente PetroSur S.A. genera un 60.07% de kilómetros adicionales por entrega, mientras que el Camión 3 es el más costoso de operar. Las recomendaciones finales se centran en la optimización inmediata de rutas y la gestión de activos de la flota, buscando reducir significativamente los costos operativos y mejorar la puntualidad de las entregas.

### Problema de Negocio

Identificar los camiones, rutas y clientes que están contribuyendo a un tiempo de entrega excesivo o a un costo de combustible por entrega elevado.

### Metodología

Utilizando Python se realizaron las consultas a la base de datos SQL Server de la empresa, facilitando la creación de visualizaciones y análisis. 

Para identificar rápidamente la ineficiencia, se comenzó analizando tres métricas clave del desempeño (KPI): la eficiencia temporal o duración de la entrega, la eficiencia de costo por consumo de combustible y la eficiencia por camión. Por último, la métrica más importante el porcentaje de desviación de la ruta de entrega para cada cliente, la cual fue calculada:
Índice de Desviación = (Distancia recorrida real-(Distancia Teórica*2)) / (Distancia Teórica*2).

### Skills

- Conexión Base de Datos: Python
- Consultas: SQL Server y Pandas
- Visualización: Matplotlib y Seaborn

### Resultados y recomendaciones de negocio
- La ruta a PetroSur S.A. tiene un índice de desviación de ruta de 60.07%, recorriendo 108.13 km adicionales por entrega y superando el Time Efficiency de 1.2 min/km. Recomendación: Replanificación forzosa de la ruta o penalización al transportista.

- El Camión 3 es el más costoso, con un consumo promedio por entrega de $425.6. También tiene un recorrido promedio por entrega de 203,5 km y mayor tiempo de viaje (308.0 min) con respecto a los camiones 1 y 2. Recomendación: Priorizar mantenimiento o venta del Camión 3 y reasignar a Camión 1 o 2 las rutas largas.

- La influencia del camión 3 en lo viajes al cliente PetroSur S.A es de 62,5% en las entregas realizadas.

- Podrían agregarse 240$ a las ganancias de la empresa por entrega realizada si se llevan a cabo las recomendaciones planteadas.

### Próximos pasos

Desarrollar un modelo de machine learning (por ejemplo, Regresión Logística o Random Forest) que asigne un índice de riesgo de ineficiencia a cada nueva asignación de ruta, basado en la combinación de camión, cliente y hora del día.


