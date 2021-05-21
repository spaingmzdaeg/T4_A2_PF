/*
	LISTAS
*/

% Creacion de una lista
listar_01(L) :- L = [1,2,3,4,5].
/*
	Resultado:
	:-listar_01(L).
	true.
	
	L = [1, 2, 3, 4, 5].
*/

% Creacion de una sublista de la lista anterior
listar_02(L) :- Sublista = [2,3,4,5], L = [1|Sublista].
/*
	Resultado:
	:-listar_02(L).
	true.
	
	L = [1, 2, 3, 4, 5].
*/

% Ejemplo pensado por la alumna
listar_03(L) :- Sublista = [2,4,6,8], L = [1,3,5,7|Sublista].
/*
	Resultado:
	:-listar_03(L).
	true.
	
	L = [1, 3, 5, 7, 2, 4, 6, 8].
*/

% Una lista siempre va a tener dos elementos, por que siempre, el primero es un elemento,
% y los dem�s son el resto de la cola
listar_04(L) :- Cabeza = 1, Cola = [2,3,4,5], L = [Cabeza|Cola].
/*
	Resultado:
	:-listar_04(L).
	true.
	
	L = [1, 2, 3, 4, 5].
*/

% Lo que se encuentra dentro de los corchetes de en medio es una lista
listar_05(L) :- Cabeza = 1, Cola = [2,3,[3.1,3.2,3.3],4,5], L = [Cabeza|Cola].
/*
	Resultado:
	:-listar_05(L).
	true.
	
	L = [1, 2, 3, [3.1, 3.2, 3.3], 4, 5].
*/

% En este caso, la cabeza esta formado por el 0, y Cabeza
listar_06(L) :- Cabeza = 1, Cola = [2,3,[3.1,3.2,3.3],4,5], L = [0,Cabeza|Cola].
/*
	Resultado:
	:-listar_06(L).
	true.
	
	L = [0, 1, 2, 3, [3.1, 3.2, 3.3], 4, 5].
*/

listar_07(L) :- Cabeza = [1,1.1], Cola = [2,3,[3.1,3.2,3.3],4,5], L =[0,Cabeza|Cola].
/*
	Resultado:
	:-listar_07(L).
	true.
	
	L = [0, [1, 1.1], 2, 3, [3.1, 3.2, 3.3], 4, 5].
*/


% Obtener Cabeza de la lista 07
obtenerCabeza([C|L],C).
/*
	Resultado:
	:-obtenerCabeza([1,2,3,4,5],Cabeza).
	true.
	
	Cabeza = 1.
*/

% Devolver la lista sin la cabeza de la lista 07
obtenerLista([C|L],L).
/*
	Resultado:
	:-obtenerLista([C|L],L).
	true.
	
	Cola = [2, 3, 4, 5].
*/
