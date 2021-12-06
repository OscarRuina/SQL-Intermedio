#1
select e.nombre,e.apellido, c.nombre from estudiante as e inner join curso as c;

#2
select e.nombre,e.apellido, c.nombre from estudiante as e inner join curso as c order by c.nombre;

#3
select p.nombre,p.apellido,c.nombre from profesor as p inner join curso as c;

#4
select p.nombre,p.apellido,c.nombre from profesor as p inner join curso as c order by c.nombre;

#5
select c.codigo, c.nombre, c.cupo - count(i.ESTUDIANTE_legajo) as cupos_disponibles from curso as c left join inscripcion as i  on c.codigo = i.CURSO_codigo group by c.nombre;

#6
select c.codigo, c.nombre, c.cupo - count(i.ESTUDIANTE_legajo) as cupos_disponibles from curso as c left join inscripcion as i  on c.codigo = i.CURSO_codigo group by c.nombre having cupos_disponibles < 10;

 