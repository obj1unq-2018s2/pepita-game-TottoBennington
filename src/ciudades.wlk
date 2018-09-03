object villaGesell {
	method imagen() = "ciudad.png"
	method nombre() = "Villa Gesell"
	method posicion() = game.at(8,3)
	
	//----------EVITAR ERROR DE QUE NO ENTIENDE EL MSJ--------
	// Esto sucede porque centre todas las colisiones en roque
	method darDeComerA(ave){} // sino me tira error cuando pepita va a alguna ciudad
}

object buenosAires {
	method imagen() = "ciudad.png"
	method nombre() = "Buenos Aires"
	method posicion() = game.at(1,1)

	//----------EVITAR ERROR DE QUE NO ENTIENDE EL MSJ--------
	// Esto sucede porque centre todas las colisiones en roque
	method darDeComerA(ave){} // sino me tira error cuando pepita va a alguna ciudad
}
