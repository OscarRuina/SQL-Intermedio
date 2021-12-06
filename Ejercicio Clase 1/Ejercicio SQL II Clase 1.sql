#1 
select count(legajo) from estudiante as e where e.carrera like "mecanica";

#2
select min(salario) from profesor as p where p.fecha_nacimiento between "1980-01-01" and "1989-12-31";

#3 modelo relacional pais, pasajero, pago

#4 
#A 
select p.idpais, p.nombre ,count(p.idpais) from pais as p inner join pasajero as pa on p.idpais = pa.idpais group by p.idpais;

#B
select sum(monto) from pago;

#C
select p.idpasajero,round(sum(monto),2) from pago as p where p.idpasajero group by p.idpasajero;

#D
select p.idpasajero,round(avg(monto),2) from pago as p where p.idpasajero group by p.idpasajero;
