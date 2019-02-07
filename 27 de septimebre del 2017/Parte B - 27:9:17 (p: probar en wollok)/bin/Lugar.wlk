class Lugar{
	const property personas = #{}
	
	method unMayorDeEdad()=self.mayoresDeEdad().take(1)
	method mayoresDeEdad()=self.personas().filter({persona=>persona.sosMayorDeEdad()})
	
	method envejecer(anios) = self.personas().forEach({persona=>persona.envejece(anios)})
	
}

class Persona{
	var property edad
	
	method envejece(anios)=self.edad(self.edad()+anios)
	method sosMayorDeEdad()=self.edad()>=18
}

class NuevaPersona inherits Persona{
	override method envejece(anios)= super(anios*2)
}

