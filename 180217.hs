18/02/17

Parte A

•	Primero se deben definir las variables, después los métodos, no?
•	Las habilidades del jugador podrían ser clases de la interfaz habilidad. De manera que, por ejemplo, el nivel gambetero que debe ser solo para gambeteros, no haga que la habilidad gambetero vea afectado su encapsulamiento.
class Futbolista{
var edad = 18
var peso = 60
var puntaje = 0
var habilidades = []
method puntajes() = self.habilidades().forEach({habilidad => habilidad.quePuntajeDas(self)})
method puntaje() = self.puntajes().sum()
}
class Habilidad {
method quePuntajeDas(jugador) = jugador.peso() * jugador.altura()
}
class Forzudo inherits Habilidad{
	override method quePuntajeDas(jugador) = super()
}
class Gambetero {
var nivelGambetero
override method quePuntajeDas(jugador) { 
if (self.nivelGambetero() != null){ self.nivelGambetero() / super()}
}}
class Rapido {
	override method quePuntajeDas(jugador) = jugador.edad() / super()
}

3. 
a.  Desde la clase habilidad pondría ese valor fijo en el método quePuntajeDas.
b. se hacen otras clases aparte, y hacen override del método que calcula el puntaje con las variaciones que incorpore cada una.
4. La delegación permite que polimórficamente pueda consultar a todas las habilidades preguntándoles quePuntajeDas() independientemente de cómo cada una de ellas se encargue del cálculo del mismo.

Parte B

1.
a. No necesariamente, porque se aplica polimorfismo, y cada caso, mientras respete los parámetros que deben pasarse, puede plantearse de forma diferente.
b. En este caso se esta contemplando que la tupla tiene dos tipos de datos ya que es requerido el segundo para soportar lo requerido por los gambeteros, y en este caso, para poder realizarse la división que se indica, debería ser un numero de forma obligatoria. 
c. Por como esta definido ahora, no se puede, esos dos parámetros pertenecen a la habilidad del suertudo pero actualmente las tuplas pueden tener dos elementos.
Aclaracion: por como esta definido ahora solo se pueden poner tuplas de dos elementos porque en un data yo tengo que definir si o si cuantos elementos tiene la tupla, no puedo decir al definir que tipo tiene la habilidad, decir que yo ahí puedo poner tuplas de 2, 3 o la cantidad de elementos que quiera.
d. Se puede “emular” un cumpleaños, devolviendo un data con dicho parámetro modificado, sin embargo, debido al concepto de inmutabilidad, este dato modificado no se vera reflejado si, por ejemplo, mas adelante, fuera de una función cumpliAños, yo hiciera una consulta por consola o quisiera usar el data en otra función (quedaría el valor definido originalmente).
2. 
Hay un problema con esto, dice se calcula usando su puntaje y probabilidad, pero como es el calculo?
Me quedaría el mismo código pero sacando la función puntaje, dejando solo puntajePorHabilidad, y ahí meteria las tuplas de la cantidad de elementos que quiera en cada caso.

Parte C

1.  
Comentario: que buen libro los días del venadoo asdsfgfsdfghhgjgdjgf underrated gem(?
a. no es inversible, falta generar a la persona.
b. no, la solución da mucho detalle algorítmico, por lo cual es más expresiva que declarativa.
c. Desde la función seAchancho, podría tratarlas polimórficamente si delegase en un predicado aparte sacar el numero de pisos o cantidad de actividades, en una misma variable. Y que dicha función trate de manera disyuntiva el hecho que una sean pisos a subir de una cantidad de pisos y en la otra los nombres de las actividades.
seAchancho(Persona):-
actividad(Persona,_),
not(actividad(Persona,_)).





