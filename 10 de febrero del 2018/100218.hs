10/02/18

Parte A
Tenemos el siguiente código para monitorear cómo el granjero alimenta a sus caballos y chanchos. Sabemos que a los caballos los alimenta diferente que a los chanchos, y a su vez, que no a todos los chanchos los alimenta igual: a los chanchos gordos les da menos alimento para que no engorden tanto.
1. Indicar verdadero o falso y justificar en cada caso.
a. Para que la solución propuesta funcione no es necesario que exista una superclase
Animal de la cual hereden Caballo y Chancho.
Verdadero. Se alimentan de una forma distinta con sus distintas variables para cada uno, por lo cual al no tener un comportamiento en común no necesitan ningún método en común.
b. La solución asigna bien las responsabilidades. Es correcto que sea el granjero quien
determine cómo deben alimentarse chanchos y caballos, ya que se asemeja más a la
realidad.

Falso. Encapsulation is broken (?, el aumento del peso del chancho por ejemplo se debería encargar el.
c. La solución hace buen uso de polimorfismo, ya que tanto chanchos como caballos
entienden los mensajes esChancho y esCaballo.
Es una mala practica, es mejor mandarles a cada animal independientemente de cual sea, el mensaje alimentarse para tratarlos polimórficamente.
d. Es posible adaptar la solución para que, de querer agregar gallinas al modelo a las
cuales también hay que alimentar a su manera, no haya que cambiar la clase Granjero, ni
la clase Caballo ni la clase Chancho.
Sep, si tratamos polimórficamente a todos los animales sin que el granjero se encargue de nada.

class Granjero {
const animales = []
method alimentarAnimales() = self.animales().forEach({ animal => animal.alimentar()})
class Caballo {
var racionDiaria
var property energia
method racionDiaria() = racionDiaria
method alimentar() = self.energizar(self.racionDiaria())
method energizar(cantidad) = self.energia(self.energia() * 1+cantidad/100)
}
class Chancho{
var kilos
method kilos() = kilos
method aumentarKilos(cant){kilos += cant}
method alimentar() {
if(self.kilos() > 50)
self.aumentarKilos(2)
else
self.aumentarKilos(3)
}
}



Parte B
1.	El uso de = es incorrecto, debería usarse is.
2.	La variable Animal no está vinculada con nada. La consulta existencial no funcionaria.
3.	En lógico no hay inmutabilidad, entonces yo no puedo modificar algún atributo interno del predicado y que quede asi. Entonces por ahí sea mas practico consultar con que valor queda, tanto de peso como de energía según el caso.
alimentar(Granjero, Animal, ConCuantoQueda):-
granjero(Granjero, Animal),
darAlimento(Animal, ConCuantoQueda).
darAlimento(caballo(Energia, Racion), CuantaEnergiaTieneAhora):-
CuantaEnergiaTieneAhora is Energia * (1 + racion/100).
darAlimento(chancho(Kilos), ConCuantosKilosQueda):-
Kilos =< 50,
ConCuantosKilosQueda is Kilos + 3.
darAlimento(chancho(Kilos), ConCuantosKilosQueda):-
ConCuantosKilosQueda is Kilos + 2.
See, es inversible porque se genera tanto el granjero como el animal antes de hacer la alimentación.


Parte C
1.	f :: b -> (a -> b) -> (_,[a]) -> bool
funcion criterio algo tuplaDeDosElementos =  any (< algo) . map criterio . snd) tuplaDeDosElementos
2.	nota: el fst de la tupla no sirve para nada me parece asi que puede ir cualquier cosa
?- función 9 (*2) (“mamaaaa! saca la mano de ahí carajo!!”, [3…])
Ahí termina pq encuentra el primer elemento y después que la lista sea infinita no importa. 
?- función 9 (*2) (“te podes quedar electrificada loka!”, [18…])
Y ahí no hay lazy evaluation.


