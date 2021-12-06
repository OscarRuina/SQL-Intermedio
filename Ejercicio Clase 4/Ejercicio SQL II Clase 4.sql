#1
select count(*) from ( select p.nombre, count(*) from profesor as p inner join curso as c on p.id = c.PROFESOR_id where c.turno like "noche" group by p.id having count(*) > 1 ) as query_anidada;

#2
select * from estudiante as e where e.legajo in (select i.ESTUDIANTE_legajo from inscripcion as i where i.CURSO_codigo != 105);
