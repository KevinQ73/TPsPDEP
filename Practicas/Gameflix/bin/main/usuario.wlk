import juego.*
import suscripcion.*

class NoPodesJugarExcepction inherits Exception {
	
}

class Usuario {
	var saldo
	var suscripcion
	var humor
	
	
	method pagarSuscripcion(){
		if (saldo >= suscripcion.precio()){
			self.gastar(suscripcion.precio())
		} else {
			self.cambiarSuscripcion(prueba)
		}
	}
	
	method puedeJugarA(unJuego){
		if (suscripcion.juegosPermitidosAJugar().contains(unJuego)){
			return true
		} else {
			throw new NoPodesJugarExcepction(message = "No podes jugar a este juego")
		}
	}
		
	method cambiarSuscripcion(unaSuscripcion){
		suscripcion = unaSuscripcion
	}
	
	method gastar(unGasto){
		saldo -= unGasto
	}
	
	method reducirHumor(unHumor){
		humor -= unHumor
	}
	
	method aumentarHumor(unHumor){
		humor += unHumor
	}
	
	method jugar(unUsuario, unJuego){
		if (self.puedeJugarA(unJuego)){
			unJuego.efectoDeJugar(unUsuario, unJuego)
		}
	}
}

const messi = new Usuario(saldo = 300, suscripcion = premium, humor = 10)
