import mutual.*

class Socio {
	const property maximoActividades
	const property edad
	const property idiomas = [] 
	var actividades = []
	method realizoMaximoActividades() = actividades.size() == maximoActividades
	method realizarActividad(actividad){
		if(self.realizoMaximoActividades()){
			self.error("Se llego al maximo de actividades posibles a realizar")
		}
		actividades.add(actividad)
	} 
	method actividades() = actividades
	method esAdoradorDelSol() = actividades.all({a => a.sirveParaBroncearse()})
	method actividadesEsforzadas() = actividades.filter({a => a.implicaEsfuerzo()})
	method leAtrae(actividad) = false
	
}

class SocioTranquilo inherits Socio{
	override method leAtrae(actividad) = actividad.dias() >= 4
}

class SocioCoherente inherits Socio{
	override method leAtrae(actividad) {
		var atrae = false
		if(self.esAdoradorDelSol()){
			atrae = actividad.sirveParaBroncearse()
		}else{
			atrae = actividad.implicaEsfuerzo()
		}
		return atrae
	}
}

class SocioRelajado inherits Socio{
	override method leAtrae(actividad){
		return actividad.idiomas().any({idioma => idiomas.any({idiom=> idiom == idioma})})
	
	}
}



