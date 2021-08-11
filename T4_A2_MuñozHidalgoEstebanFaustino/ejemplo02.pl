% LISTAS: Conteo de los elementos de una lista.

% Contar los elementos de una lista

% Lista Vacia
predicado([]) :- procesar([]).		% Caso Base
predicado([cabeza|cola]) :- procesar(cabeza), predicado(cola).		% Forma recursiva

% Contar los elementos de una lista
cuenta_elementos([],0).
cuenta_elementos([_|L],N) :- cuenta_elementos(L, Tam), N is Tam+1.

/*
	Ejemplo 1.-
	:-cuenta_elementos([4,2,7,8,9],N).

	Ejemplo 2.-
	:-cuenta_elementos([1,2,3,4],4).

	Ejemplo 3.-
	:-cuenta_elementos([1,2,3,4],N).

	Ejemplo 4.-
	:-cuenta_elementos([1,2,3,4,5,6,7,8],N).

	Ejemplo 5.-
	:-cuenta_elementos([6,2,4,0,1,0],N).
*/