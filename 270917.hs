27/09/17

Parte A
1. Si, es poco declarativo porque tiene mucho detalle algoritmico, y hay una mayor cantidad de codigo en la medida que se van guardando quienes cumplen la condicion en una matriz.
2. 
mayoresDeEdad personas= filter esMayorDeEdad personas 
esMayorDeEdad persona = edad persona >= 18
(siempre tengo la duda de si en los finales a diferencia de los parciales es o no una buena practica hacer aplicación parcial)
Es mejor ya que en una linea de codigo podemos resolver lo que plantea y ademas no es necesario el uso de una matriz para ir guardandolos. Filter se encarga directamente de darnos la lista con los mayores de edad.
3. me parece que no, onda mientras no es una lista infinita, los dos van a recorrer toda la lista por igual. 
4. 
a.
?- (head . map envejecer) personas
b.
En el codigo que escribi recien? Composicion, al aplicar una funcion sobre otra, map con head. Orden superior, map es una funcion que recibe otra funcion.
c.
 Sera las mismas que se habian definido originalmente, no se puede cambiar un parametro del data y que quede modificado para siempre por la inmutabilidad.

Parte B

1.
class elClubDeLosViejardis{
var personas = []
method mayoresDeEdad() = self.personas.filter({persona => persona.sosMayorDeEdad()})
method unMayorDeEdad() = self.personas().first()
}
class Persona{
var edad
method sosMayorDeEdad() = self.edad() >= 18
}


2. 
class elClubDeLosViejardis{
….
method todosEnvejecen(tantosAnios) = self.personas().forEach({persona => persona.envejece(tantosAnios)}) 
}
class Persona{
…
method envejece(tantosAnios) = self.edad(self.edad() + tantosAnios)
} 
// La diferencia con funcional es que en objetos hay inmutabilidad, entonces podes cambiar el // valor de la variable edad y que quede asi para siempre hasta que lo cambies
3.
class nuevaPersona inherits Persona{
override method envejece(tantosAnios) = self.edad(super() * 2)
}
4.
a. igual que como hice en el punto anterior calculo, haciendo que herede de persona
b. al usar polimorfismo no hace falta hacer modificaciones sobre el código de la clase donde están todas las personas. Los cambios se hacen nada más si algún tipo de persona nueva se agrega con otra forma de envejecer


Parte C
Programador A
1.
a.
personasMayoresDeEdad(Personas, UnLugar):-
habitante(_, UnLugar),
forall(habitante(UnLugar,Persona), esMayorDeEdad(Persona)).
b.
sacarUnMayorDeEdad(Mayor, UnLugar):-
habitante(_, UnLugar),
findall(Persona, (habitante(UnLugar,Persona), esMayorDeEdad(Persona)), Personas),
head(Personas, Mayor). 

Programador B
personasMayoresDeEdad(Personas, UnLugar):-
habitante(UnLugar, Habitantes),
… sabes que no se como seguir? JAJAJAJA es que siempre definíamos por extensión...
Debería agarrar la guía de lenguajes y ver si hay un all, pero en la vida use algo asi en este 





