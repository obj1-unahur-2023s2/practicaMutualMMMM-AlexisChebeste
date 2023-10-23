class Viaje  {
	const property idiomas = []
	method implicaEsfuerzo() = false
	method sirveParaBroncearse () = false
	method dias()
	method esInteresante() = idiomas.size() > 1
	
}

class ViajeDePlaya inherits Viaje {
	const property largoPlaya
	override method dias() = largoPlaya/ 500
	override method implicaEsfuerzo() = largoPlaya > 1200
	override method sirveParaBroncearse () = true 
	
}

class ExcursionCiudad inherits Viaje {
	const property atracciones
	override method dias() = atracciones/ 2
	override method implicaEsfuerzo() = atracciones.between(5,8)
	override method esInteresante() = super() or atracciones == 5
}

class ExcursionCiudadTropical inherits ExcursionCiudad {
	override method dias() = super() + 1
	override method sirveParaBroncearse() =  true
}

class SalidaTrekking inherits Viaje {
	const property kmSenderos
	const property diasDeSol
	override method dias() = kmSenderos / 50
	override method implicaEsfuerzo() = kmSenderos > 80
	override method sirveParaBroncearse() {
		return diasDeSol> 200 or (diasDeSol.between(100,200) and kmSenderos > 120)
	}
	override method esInteresante() = super() and diasDeSol > 140
}

class ClaseGimnasia  {
	const idiomas = ["Español"]
	method idiomas() = idiomas
	method dias() = 1
	method implicaEsfuerzo() = true
	method sirveParaBroncearse() = false
}



