/*
	LISTAS:
	     Obtener suma de los elementos de una lista.
*/

% Sumar los elementos de una lista
suma_lista([],0).		% Caso vacio

suma_lista([X|L],N) :- suma_lista(L,C), N is C+X.
/*
	Ejemplo 1.-
	
	Resultado:
	:-suma_lista([4,7,2],N).
	true.
	
	N = 13.
--------------------------------------------------------

	Ejemplo 2.-
	
	Resultado:
	:-suma_lista([5,2,6,3,4,20],N).
	true.
	
	N = 40.
--------------------------------------------------------

	Ejemplo 3.-
	
	Resultado:
	:-suma_lista([7,5,-1],N).
	true.
	
	N = 11.
*/
