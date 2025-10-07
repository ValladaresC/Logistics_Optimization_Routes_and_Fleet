
use SC_RUTAS_ENTREGAS;

select * from dbo.clientes;
select * from dbo.camiones;
select * from dbo.entregas;

-- Time Efficiency (Delivery Duration)
select c.nombre as cliente, 
        avg(e.entrega_minutos) as duracion_prom_min,
        round(avg(e.entrega_minutos / e.km_recorridos),1) as prom_minutos_por_km,
        case 
            when round(avg(e.entrega_minutos / e.km_recorridos),1) > 1.2 then 'Entrega Ineficiente'
            else 'Entrega Eficiente o Aceptable'
        end as estado_eficiencia
from entregas e 
join clientes c on e.id_cliente = c.id_cliente
group by c.nombre
order by prom_minutos_por_km desc;


-- Time Efficiency per Truck
select c.id_camion as camiones,
       count(e.id_entregas) as viajes_por_camion,
       sum(e.km_recorridos) as total_recorrido,
       avg(e.km_recorridos) as prom_recorrido,
       sum(e.entrega_minutos) as total_duracion,
       avg(e.entrega_minutos) as prom_duracion
from entregas e
join camiones c on e.id_camion = c.id_camion
group by c.id_camion;


-- Cost Efficiency (Fuel Consumption)
select c.id_camion as camiones,
       count(e.id_entregas) as entregas_por_camion,
       round(sum(e.costo_combustible_lts * e.km_recorridos * c.consumo_km_lts),1) as costo_total_combust,
       round(avg(e.costo_combustible_lts * e.km_recorridos * c.consumo_km_lts),1) as costo_prom_combust,
       round(avg(e.costo_combustible_lts),3) as costo_prom_litros_combust
from entregas e
join camiones c on e.id_camion = c.id_camion
group by c.id_camion;


-- Route Deviation Index
select c.nombre as cliente,
       sum(c.distancia_base_km * 2) as recorrido_teorico,
       sum(e.km_recorridos) as recorrido_real,
       sum(e.km_recorridos - (c.distancia_base_km * 2)) as desv_ruta_km,
	   round(avg(e.km_recorridos - (c.distancia_base_km * 2)),2) as prom_desv_ruta_km,
       round(avg( ( (e.km_recorridos - (c.distancia_base_km * 2)) / (c.distancia_base_km * 2) )*100 ),2) as pct_desv_ruta
from entregas e
join clientes c on e.id_cliente = c.id_cliente
group by c.nombre;

-- Truck influence on Customer PetroSur S.A.
with entregas_cliente_4 as (
     select e.id_entregas,
			e.id_camion,
			e.km_recorridos,
			e.entrega_minutos
     from entregas e
     join clientes c on e.id_cliente = c.id_cliente
     where c.nombre = 'PetroSur S.A.')
select id_camion,
       count(id_entregas) AS total_entregas_camion,
       (count(*) *100.0 / sum(count(*)) OVER ()) AS porcentaje_participacion,
       avg(km_recorridos) as prom_recorrido_camion,
       avg(entrega_minutos) as prom_tiempo_camion
from entregas_cliente_4
group by id_camion 
order by porcentaje_participacion desc, prom_recorrido_camion desc, prom_tiempo_camion desc ;