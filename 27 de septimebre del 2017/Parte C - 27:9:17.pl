

% Cosas necesarias para probar en terminal/linea de comando:

persona(pedro,1).
persona(juan,2).
persona(ana,2).
persona(andres,30).
persona(susana,9).

esMayorDeEdad(Persona):-
  persona(Persona,Edad),
  Edad >= 18.

% Programador A

habitante(almagro,pedro).
habitante(almagro,juan).
habitante(almagro,ana).
habitante(caballito,andres).
habitante(caballito,susana).

% Programador B:

habitantes(almagro,[pedro,juan,ana]).
habitantes(caballito,[andres,susana]).

%    1 — a)

mayoresDeEdadA(Lugar,Mayores):-
  habitante(Lugar,_),
  findall(Persona,(habitante(Lugar,Persona),esMayorDeEdad(Persona)),Mayores).

mayoresDeEdadB(Lugar,Mayores):-
  habitantes(Lugar,Personas),
  personasMayores(Personas,Mayores).

personasMayores([],[]).
personasMayores([Persona|Personas],[Persona|Mayores]):-
  esMayorDeEdad(Persona),
  personasMayores(Personas,Mayores).
personasMayores([_|Personas],Mayores):- personasMayores(Personas,Mayores).

%        b)

unMayorDeEdadA(Lugar,Mayor):-
  mayoresDeEdadA(Lugar,Mayores),
  member(Mayor,Mayores).

  unMayorDeEdadB(Lugar,Mayor):-
    mayoresDeEdadB(Lugar,Mayores),
    member(Mayor,Mayores).

%    La base de conocimientos establecida por el programador A permite ser mas declarativo que la del programador B, ya que al tener a los habitantes dentro de una lista, se debe filtrar la misma para obtener aquellas personas mayores de edad, pero prolog no cuenta con dicho predicado, por ende debemos realizarlo, obteniendo una solucion cuyo nivel de declaratividad es bajo.

%    1 — Eligiendo la base de conocimientos del programador A, las consultas serian las siguientes:
%        a)   habitante(Lugar,_), forall(habitante(Lugar,Persona),esMayorDeEdad(Persona)).
%        b)   habitante(Lugar,_), not((habitante(Lugar,Persona),esMayorDeEdad(Persona))).
%     Cuando generamos al lugar, mediante la utilizacion del predicado habitante/2, obtenemos la inversibilidad de ambas soluciones, ya que a la hora de hacer una consulta existencial, nos dira aquellos lugares que no tienen personas mayores de edad y aquellos cuyos habitantes son todos mayores de edad. 
