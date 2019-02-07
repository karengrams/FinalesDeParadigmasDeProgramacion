11/02/17

Parte A

//1. 
//a. verdadero. la funcion max permite que por mas que el stock sea 0, se //ejecute el metodo y se facture. Deberia utilizarse una excepcion en este //caso.
//b. falso. Se esta consultando por los distintos tipos de producto desde la //clase heladería, en cambio, debería poder tratárselos a todos por igual, //ordenandoles que sean vendidos y cada uno se encargara de hacerlo a su //manera.
//c. verdadero. el cucurucho, al igual que el kilo de helado, deberian tener //su propio stock, y ellos deben encargarse de ver cuanto cuestan
//el stock no tiene que ser el mismo para todo lo que se venda por igual 
//d. verdadero. La disminucion de stock se deberia hacer en el producto y no //desde la clase Heladeria


class Heladeria{
	var facturado
	var stock
	var prod
	
	method cambiarTipo(nuevoProducto){
		prod = nuevoProducto
	}
	method aumentarFacturado(cantidad){
		facturado += cantidad 
	}
	method vender(prod){
		if (prod.tenesStock().negate()){
			throw new ExcepcionFaltaStockError ("falta stock")}
		prod.seVendido(self)
		
		
}

class ExcepcionFaltaStockError inherits Exception{}

class Producto{
	var stock
	method disminuiStock(cantidad) {
		stock = (stock - cantidad).max(0)
	}
}

class KgDeHelado inherits Producto{
	method tipo() {return 1}
	method seVendido(heladeria){
		self.disminuiStock(1)
		heladeria.aumentarFacturado(200)
		
	}	
}

class Cucurucho inherits Producto{
	var recargoCobertura
	method tipo(){ return 2 }
	method recargo() {
		return recargoCobertura
	}
	
	method seVendido(heladeria){
		self.disminuiStock(0.2)
		heladeria.aumentarFacturado(50 + self.recargo())
	}
		
}

Parte B

1.
f :: (b -> c)-> (a -> b) -> [a] -> bool    
a. [1,3,5,7,9]
b. ?? 
c. la longitud de la lista que pases por parámetro..
d. entra en un loop infinito, g es una función que recibe por parámetro un argumento y recursivamente vuelve a pasar el mismo parámetro, de manera que la función no deja de ejecutarse.
----
2. se me complico este.. tengo como la idea pero no se bien como ejecutarla
ataque unPais otroPais =  seAtacado otroPais (paisAtacante unPais)
paisAtacante (Pais nombre color ejercitos) = Pais nombre color (ejércitos – 2)
seAtacado (Pais nombre1 color1 ejercitos1) (Pais nombre2 color2 ejercitos2) = Pais nombre1 color1 (ejercitos1 – ejercitos2)
funcionDelAtaque unPais otrosPaises = foldr ataque unPais otrosPaises



Parte C

* NotaAprobo no esta ligado (creo q se dice asi) con nada, la nota que se considera para determinar los aprobados, la variable Nota, deberían tener el mismo nombre de variable que aquella que se busca en el segundo argumento del findall.
findall(NotaAprobo, (cursa(Curso, _, NotaAprobo), NotaAprobo >= 4), Aprobados),
* La solución podría ser mas declarativa, para ello, en vez de usar dos findall, para comparar la cantidad de aprobados con la cantidad de notas totales, puede hacerse un forall el cual permita ver que para todas las notas que haya, todas hayan sido de aprobación, para lo cual no será luego necesario comparar con la cantidad.
*El inconveniente que presenta la consulta, es que no es inversible, debe ser generado el curso por el cual se esta consultando.
Solucion final:
aprobaronTodos(Curso):-
cursa(Curso, _, _),
forall(cursa(Curso,_,Nota), Nota>=4).





