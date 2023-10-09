import juego.*
import usuario.*
import categoria.*

class ElJuegoNoExisteException inherits Exception {
	
}

object gameflix {
	const juegos = [hollowKnight, mortalKombat, fireboyAndWatergirl, tetris, pinball, ageOfEmpiresII, lol, dota2, outlast]
	const usuarios = [messi]
	
	method juegos(){
		return juegos
	}
	
	method filtrarJuegosMenorAPrecio(unPrecio){
		return juegos.filter({
			juego => juego.sosDeMenorPrecio(unPrecio)
		})
	}
	
	method filtrarJuegosPorCategoria(unaCategoria){
		return juegos.filter({
			juego => juego.esDeCategoria(unaCategoria)
		})
	}
	
	method filtrarJuegosPorNombre(unNombre){
		return juegos.findOrElse({
			juego => juego.seLlama(unNombre)
		},{
			throw new ElJuegoNoExisteException(message = "No existe el juego en tu libreria flaco")
		})
	}
	
	method cobrarSuscripciones(){
		usuarios.forEach({
			cliente => cliente.pagarSuscripcion()
		})
	}
	
	method juegoRecomendado(){
		return juegos.anyOne()
	}
}
