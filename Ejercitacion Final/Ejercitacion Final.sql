#1
select e.legajo, count(i.CURSO_codigo) as cursos from estudiante as e  left join inscripcion as i on e.legajo = i.ESTUDIANTE_legajo group by e.legajo;

#2
select e.legajo, count(i.CURSO_codigo) as cursos from estudiante as e  inner join inscripcion as i on e.legajo = i.ESTUDIANTE_legajo group by e.legajo having count(i.CURSO_codigo) > 1;

#3
select e.legajo, count(i.CURSO_codigo) as cursos from estudiante as e  left join inscripcion as i on e.legajo = i.ESTUDIANTE_legajo group by e.legajo having count(i.CURSO_codigo) = 0;

#4
#Las tablas curso,estudiante,inscripcion y profesor tienen indexes clausterizados en las columnas
# que son primary key ( codigo, legajo , numero y id respectivamente )
#Ademas curso tiene un index no clausterizado en la columna que es foreign key ( PROFESOR_id )
# e inscripcion tiene dos indexes no clasteurizados que son dos foreign key ( CURSO_id y ESTUDIANTE_id )

#5
select * from estudiante as e where e.legajo in (select i.ESTUDIANTE_legajo from inscripcion as i where i.CURSO_codigo = 101 and 102);

