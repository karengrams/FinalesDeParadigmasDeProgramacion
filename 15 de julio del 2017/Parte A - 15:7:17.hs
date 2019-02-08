{-# LANGUAGE NoMonomorphismRestriction #-}
import Text.Show.Functions
import Data.List
import Data.Maybe
import Test.Hspec

-- Cosas necesarias para probar en terminal/linea de comando:

data Persona = Persona{
    nombre :: String,
    tipo :: Int
} deriving Show -- Suponiendo que persona es de este tipo compuesto

saludar​ ​::​ ​String​ ​->​ ​Int​ ​->​ ​String

saludar​ ​saludoOriginal​ ​1​ ​=​ ​"Bien, ¿o querés que te cuente?"
saludar​ ​saludoOriginal​ ​2​ ​=​ ​saludoOriginal
saludar​ ​saludoOriginal​ ​3​ ​=​ ​((​flip​ ​(​++​)​ ​" es una forma de decir"​)​ ​.​ ​head​ ​.​ ​words1) saludoOriginal

-- Respuestas:

{-    a) — Polimorfimo ad-hoc: hay tres funciones para distintos tipos de persona.
         — Composicion: en la ultima funcion saludar se utiliza dicho concepto para poder obtener el saludo infinito, luego de separarlo por palabras, tomar la primera y agregarle el texto adicional.
         — Aplicacion parcial: en la ultima funcion a aplicar de la composicion, aplica dicho concepto para crea una nueva funcion que espera el parametro faltante, es decir, luego de haber aplicado la funcion flip, la funcion de concatenacion ('++'), espera otro string para concatenar.
         — Orden superior: la funcion 'flip' recibe la funcion de concatenacion para poder invertir los parametros esperados por la funcion antes mencionada.

      b) Las funciones son declarativas y expresivas. Son declarativas ya que utilizan funciones como "words", que nos permite obtener lo que queremos sin saber su proceso algoritmico; y son expresivas por la utlizaciion de nombres claros y el uso de la composicion. Sin embargo, no le saca ventaja al polimorfimo completamente, o mejor dicho, no hace uso del polimorfismo parametrico.

      c) Si el tipo de persona es 3, no entraria en un loop infinito, como lo haria una persona de tipo 2, ya que se utliza la evaluacion diferedia con la funcion head, es decir, no se analizan las infinitas palabras separadas por la funcion previa, sino que se toma la cabeza sin importar la cola de la lista. En cambio, el tipo 2, devuelve lo que recibe, es decir, entra en un loop infinito. La persona de tipo 1, sin importar que tipo de string reciba (ya sea infinito o finito), nunca entrara en un loop porque siempre devolvera el mismo string.

      d) -}

saludarA persona saludo = ((++) (nombre persona (++) ": ").saludar saludo.tipo) persona

karen = Persona "Karen" 3

--   saludarA karen "holi holi"
-- > "Karen: holi es una forma de decir"

--     La funcion sin importar que tipos de saludos haya, permite curbir el nuevo requerimiento utilizando polimorfimos parametrico (no importa que tipo de persona se trate, la funcion tiene la responsabilidad de saludarla y obtener una respuesta tratandola indiferentemente a la persona recibida)
