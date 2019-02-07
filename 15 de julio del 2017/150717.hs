15/07/17

Parte A
A) 
* Polimorfismo. La función saludar está definida de 3 formas distintas, pero recibe los mismos tipos de parámetro.
* Composicion. en el tercer saludar, el saludo original es pasado por parámetro a la función words, que luego se aplica a la función head, y esta a flip. 
B)
Si bien hay uso de polimorfismo, no parece una buena practica que el segundo parámetro de la función solo sirva para identificar que tipo de saludo es, pero aparte de eso resulta irrelevante en el codigo.
c) en la segunda función entraría en un loop infinito, y en la tercera también porque words es una función que debe recorrer toda la lista si o si para saber cuantos elementos tiene, por lo cual, no se aplica la lazy evaluation.
saludar saludoOriginal persona = (++) saludoOriginal . (persona (++) “: ”)
otra vez no entiendo el enunciado si también me pide que modifique el resto de lo anterior, y la única manera de no usar esos números es al definir la función poner en los parámetros los saludos que implican esas respuestas, pero esos saludos no están en el enunciado.

Parte B
1) no, falta generar la comida
2) la primera otorgara como resultado todas las comidas que le gusten a alguien, esto va a hacer que, por ejemplo, milanesa aparezca dos veces al igual que la pizza.
La segunda no va a tener repetidos al mostrar la solución (verificado en prolog je)
3) mmmmm …..
4) gusta(clari, brocoli)
Devuelve false ya que no hay ningún camino posible en el cual se pueda asumir que a clari le gusta el brócoli, el brócoli no es una comida rica porque a nadie le gusta además. Entonces prolog no puede asumir como verdadera la consulta, por principio de universo cerrado. 

Parte C

1)
a) no se delega bien, el producto debe ser el encargado de revisar su costo y fecha de estreno, dichos elementos deberían corresponder a su estado interno, de eso no se debería encargar el cliente.
El tipo de producto debería llevarse a cabo a través de composición, las temporadas de la serie, saber si una película gano o no el oscar o si un documental tiene titulo no oficial son cuestiones que le corresponden a cada uno de los tipos.
B) Verdadero. Se le consulta a todos los productos si son interesantes y luego este se encargara de verlo aplicándolo de distintas formas según el caso.
C) no, ya que habría que seguir codeando dentro del método esInteresante planteando mas condicionales if, y es mas fácil tratarlo polimórficamente preguntándole al tipo, sos interesante.
D) supongo que verdadero, los tipos de productos definidos tienen una manera distinta de ver si son interesantes, no hace falta heredar porque no se usaría algún método de la clase maestra, directamente la clase cliente se comunica con ellos, entonces son una interfaz.
2)
class Cliente{
var property productos = []
method esVentajero() = self.productos().all({producto => producto.sosDeVentajero()})
method miraAlgoInteresante() = { productos.any({ producto => producto.EsInteresante()})
}
--
class Producto{
var costo
var tipo
method sosDeVentajero() = self.costo() > 100000 && self.fechaDeEstreno().plusYears(1) < new Date() 
method esInteresante() = tipo.sosInteresante()
}
Class serie, película, y documental bla bla bla…. //estaba muerto para ese entonces





