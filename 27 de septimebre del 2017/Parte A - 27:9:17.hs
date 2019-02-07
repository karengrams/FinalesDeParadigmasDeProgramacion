{-# LANGUAGE NoMonomorphismRestriction #-}
import Text.Show.Functions
import Data.List
import Data.Maybe
import Test.Hspec

-- Cosas necesarias para probar en terminal/linea de comando:

data Persona = Persona{
    nombre::String,
    edad:: Int
}deriving Show

esMayorDeEdad persona = edad persona > 18

karen = Persona "Karen" 19

personas = replicate 10000000 karen

-- Respuestas:

--    1 — Es correcto. La solucion propuesta por el programador A muesrea el proceso algoritmico, es decir, se ve claramente com oseleciona a la spersoas mayores para filtrarlos.

--    2 — Suponiendo que existe esMayorDeEdad.

 unMayorDeEdad = head.mayoresDeEdad

 mayoresDeEdad = filter esMayorDeEdad

-- La solucion propuesta en Haskell es mas declarativa que la anterior ya que delega la responsabilidad del filtrado de personas a otra funcion, es decir, no se sabe como, pero se filtran aquellas personas que son mayores de edad.

--    3 — Si se tuviera una lista de 10 millones de persoanes, la solucion en Haskell resultaria mas rapida que la otra, ya que en Haskell (y en otros lenguajes funcionales) cuenta con evaluacion diferida, es decir, se analizara solamente aquello que sea necesario, por ende, no se esperara a filtrar a las 10 millones de personaes, sino que se filtra la primera y aquella es la que tomara la funcion head.

--    4 — envejecer años persona = ...
--        envejecer :: Int -> Persona -> Persona
--        personas = [...]

--       a) Main > (head.map envejecer 3) personas
--       b) En el codigo del punto anterior se utiliza la composicion para obtener una persona envejecida. Tambien se utiliza el concepto de orden superior con la utilizacion de la funcion map, y por ultimo se utiliza la aplicacion parcial cuando solamente le enviamos uno de los dos parametros esperados por map, para asi de aquella manera, poder componer las funciones.
--       c) Haskell cuenta con la inmutabilidad de sus entidad (provocando la trasparencia referencial, ya que no cuenta con asignacion destructiva, ni efecto de lado), por ende, sin importar que hayamos envejecido a las personas, es decir, que hayamos cambiado sus edades, si consultamos por estas, obtendriamos a las mismas sin envejecer
