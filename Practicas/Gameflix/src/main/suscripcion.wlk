import usuario.*
import gameflix.*
import categoria.*

class Suscripcion {
	
	const precio
	
	method precio(){
		return precio
	}
	
	method juegosPermitidosAJugar(unaCategoria){
		return gameflix.filtrarJuegosPorCategoria(unaCategoria)
	}
}

object premium{
	
	method precio(){
		return 50
	}
	
	method juegosPermitidosAJugar(){
		return gameflix.juegos()
	}
}

object base{
	
	method precio(){
		return 25
	}

	method juegosPermitidosAJugar(){
		return gameflix.filtrarJuegosMenorAPrecio(30)
	}
}

object infantil inherits Suscripcion(precio = 10){
	
	method juegosPermitidosAJugar(){
		return gameflix.filtrarJuegosPorCategoria(categoriaInfantil)
	}
}

object prueba inherits Suscripcion(precio = 0){
	
	method juegosPermitidosAJugar(){
		return gameflix.filtrarJuegosPorCategoria(categoriaDemo)
	}
}