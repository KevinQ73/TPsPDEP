import suscripcion.*
import categoria.*

class Juego {
	const nombre
	var precio
	const categoria
	const horasJugadas
	
	method nombre(){
		return nombre
	}
	
	method precio(){
		return precio
	}
	
	method horasJugadas(){
		return horasJugadas
	}
	
	method precio(unPrecio){
		precio = unPrecio
	}
	
	method categoria(){
		return categoria
	}
	
	method esDeCategoria(unaCategoria){
		return categoria == unaCategoria
	}
	
	method sosDeMenorPrecio(unPrecio){
		return precio < unPrecio
	}
	
	method seLlama(unNombre){
		return nombre == unNombre
	}
}

const hollowKnight = new Juego(nombre = "Hollow Knight", precio = 5, categoria = categoriaEstrategia, horasJugadas = 135)
const mortalKombat = new Juego(nombre = "Mortal Kombat", precio = 40, categoria = categoriaViolencia, horasJugadas = 23)
const fireboyAndWatergirl = new Juego(nombre = "Fireboy and Watergirl", precio = 0, categoria = categoriaInfantil, horasJugadas = 300)
const tetris = new Juego(nombre = "Tetris", precio = 0, categoria = categoriaDemo, horasJugadas = 2)
const pinball = new Juego(nombre = "Pinball", precio = 0, categoria = categoriaDemo, horasJugadas = 1)
const ageOfEmpiresII = new Juego(nombre = "Age of Empires II", precio = 5, categoria = categoriaEstrategia, horasJugadas = 87)
const lol = new Juego(nombre = "League of Legends", precio = 0, categoria = categoriaMOBA, horasJugadas = 3)
const dota2 = new Juego(nombre = "Dota 2", precio = 10, categoria = categoriaMOBA, horasJugadas = 4)
const outlast = new Juego(nombre = "Outlast", precio = 35, categoria = categoriaTerror, horasJugadas = 17)
