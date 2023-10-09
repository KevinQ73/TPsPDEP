import suscripcion.*

object categoriaViolencia {
	const nombre = "Violencia"
	
	method nombre(){
		return nombre
	}
	
	method efectoDeJugar(unUsuario, unJuego){
		unUsuario.reducirHumor(10 * unJuego.horasJugadas())
	}
} 

object categoriaMOBA {
	const nombre = "MOBA"
	
	method nombre(){
		return nombre
	}
	
	method efectoDeJugar(unUsuario, unJuego){
		unUsuario.gastar(10)
	}
}

object categoriaTerror {
	const nombre = "Terror"
	
	method nombre(){
		return nombre
	}
	
	method efectoDeJugar(unUsuario, unJuego){
		unUsuario.cambiarSuscripcion(infantil)
	}
}

object categoriaEstrategia {
	const nombre = "Estrategia"
	
	method nombre(){
		return nombre
	}
	
	method efectoDeJugar(unUsuario, unJuego){
		unUsuario.aumentarHumor(5 * unJuego.horasJugadas())
	}
}

object categoriaInfantil {
	const nombre = "Infantil"
	
	method nombre(){
		return nombre
	}
}

object categoriaDemo {
	const nombre = "Demo"
	
	method nombre(){
		return nombre
	}
}