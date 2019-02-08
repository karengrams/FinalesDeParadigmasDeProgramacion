% Cosas necesarias para probar en terminal/linea de comando:

gusta(charly, milanesa).
gusta(charly, bondiola).
gusta(clari, milanesa).
gusta(clari, pizza).
gusta(erwin, pizza).
gusta(franco, sushi).
comida(milanesa).
comida(higado).
comida(bondiola).
comida(pizza).
comida(brocoli).
comida(sushi).
comida(bacalao).

% Solucion A:
comidasRicasA(ComidasRicas):-
  findall(Comida, (comida(Comida), gusta(_, Comida)), ComidasRicas).

% Solucion B:
comidasRicasB(ComidasRicas):-
  findall(Comida, comida(Comida), Comidas),
  sonRicas(Comidas, ComidasRicas).

sonRicas([], []).
sonRicas([Comida|Comidas], [Comida|ComidasRicas]):-
  gusta(_, Comida),
  sonRicas(Comidas, ComidasRicas).
sonRicas([_|Comidas], ComidasRicas):-sonRicas(Comidas, ComidasRicas).

% Respuestas:
/* 1) Ambas soluciones son inversibles, ya que, si bien no se generan las comidas fuera de las reglas establecidas, si se realiza una pregunta existencial, con una variable anonima o una variable libre, nos dara como respuesta aquellas comidas que son ricas.
   2) La primera solucion tendra un solo resultado, con repetidos, mientras que la segunda obtendra multiples respuestas, ya que el segundo hace uso del motor de busqueda (backtracking), por ende, se obtendran todas las posibles soluciones.
   3) La primera solucion, al colocar como condicion del 'findall' aquellas comidas que a alguiente le guste, no hace uso completo del backtracking, ni hace uso de la recursividad. Mientras que la segunda solucion, al utilizar la recursividad en su predicado auxilicar, se recorreran todas las posibles soluciones.
   4) ?- comida(repollo).
      False
      Todo lo que no se encuentra en nuestra base de conocimientos, se desconoce y se considera falso (principio de universo cerrado).
*/
