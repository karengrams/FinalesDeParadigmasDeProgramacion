03/10/18

Parte A
a)
class Combatiente{
var property poder
var property vida
method recuperaVida(cantidad) = self.vida() + 10
method perdeVida(cantidad) = self.vida() - cantidad
method atacar(rival) =  rival.perdeVida(self.poder()) 
}
class Sacerdote inherits combatiente{
method curar(aliado, cantidad) = aliado.recuperaVida(cantidad)
}
b)
class Sacerdote{
…
override method atacar(rival) = super()
}
c)
class Sacerdote{
…
override method atacar(rival) = rival.recuperaVida(10)
}
d)
class Sacerdote{
…
method perjudicar(rival) = rival.recuperaVida(-10)
override method atacar(rival){
super()
self.perjudicar(rival)
}}
e)
Puede haber polimorfismo, si yo desde una clase externa, como por ejemplo, EjercitoDeCombatientes, y le digo a todos los combatientes, ya sean sacerdotes, guerreros, magos, etc. Si todos tienen definido el método m2 de una forma distinta y desde esta clase con un forEach hago que cada combatiente ejecute m2, ahí hay polimorfismo.


Parte B
2) 
a) Verdadero. Yo paso por parámetro un tipo de dato que luego es aplicado parcialmente al ser aplicado sobre las funciones, que a través de la composición se iran aplicando sobre otras.
b) Falso. Una función para ser de orden superior tiene que recibir una función al menos, no tiene que ver con la cantidad de parámetros.
c) La inversibilidad implica que se puedan hacer consultas existenciales sobre individuos que cumplan diversas condiciones, esto no se puede hacer en funcional.



Parte C
a) se que la evaluación diferida es cuando te pasan una lista, por ejemplo, que sea infinita, y no necesita recorrerla toda, pero la ansiosa no me cierra que es, no encontré en los apuntes.
b) el cambio de estado puede emularse pero no quedar de manera definitiva.
cambiarEdad (Persona edad sexo) = Persona (edad + 1) sexo
c) Con las excepciones yo puedo proponer en que caso no se cumple con lo pedido, arrojar la excepción y luego codificar el resto en base a que si se cumpla. Esto genera ahorrar código.
Pero además, yo puedo clasificar las excepciones con distintos nombres, de manera que cada una se trata de una forma diferente, y es mejor para informar al usuario.
Y también con la excepción, si el caso que se quiere no se da, se corta el flujo mediante la excepción y no se sigue ejecutando el resto del código.
class Persona{
if (persona.sosFeliz().negate()){
throw new NoHayFelicidadError(“La persona no tiene motivacion”)
bla bla bla 
}
}
class NoHayFelicidadError inherits Exception{}

