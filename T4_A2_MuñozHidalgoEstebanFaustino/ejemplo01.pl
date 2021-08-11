% LISTAS: Listas de estudiantes.

%student(Id, name([Last,First]), grades([a1,a2,a3, test])).

student(1001, name([allteron, alice]), grades([92,75,100,85])).
student(1002, name([boberson, bob]), grades([50,64,73,66])).
student(1003, name([charleston, charlie]), grades([65,75,85,100])).
student(1004, name([davidson, dave]), grades([10,92,34,87])).
student(1005, name([ellenovitch, ellen]), grades([72,87,82,70])).

/* 
¿Cómo le fue a Alice en la tarea 1?
?- student(_,name([_,alice]),grades([A1|_])).

¿Cómo le fue a Alice en la tarea 2?
?- student(_,name([_,alice]),grades([-;A2|_])).

¿Cómo le fue al estudiante 1002 en el examen?
?- student(1002,_,grades([_,_,_,Test])).
?- student(1002,_,grades(L)), last(L,Test).

¿Quién sacó 100 en la prueba?
?- student(_,name(Name),grades(L)), last(L,Test), Test==100.

¿Alguien obtuvo 100 en algo?
?- student(_,name(Name),grades(L)), member(100,L).

¿Cuál es la calificación promedio de cada estudiante? (suponga la misma ponderación).
?- student(_,name(Name),grades([A1,A2,A3,Test])), Average is (A1+A2+A3+Test)/4.
*/

