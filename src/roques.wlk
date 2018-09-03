import comidas.*

object roque {
	var property posicion = game.at(0,9)
	var property comidaDeAves = null
	
	var random = game.at(
		1.randomUpTo(10), // x
		1.randomUpTo(10) // y
	)
	method imagen() = "jugador.png"	
	
	method guardarAlimento(comida){
	    if(comida != null && comidaDeAves == null){ // si hay comida alli && comidaDeAves no tiene nada
			game.removeVisual(comida) // quito visual
		}else if(comidaDeAves != null && comida != null){ // si tenemos una comida guardada & hay comida alli
			game.removeVisual(comida)// quito la visual de la comida
			game.addVisualIn(comidaDeAves, posicion.clone()) // agregamos la imagen de la comida que teniamos previamente
			/*
			 * por alguna razon luego de agregar la comida roque solo le pasa por debajo a la comida
			 * y no la vuelve a agarrar.
			 */
		}
		comidaDeAves = comida
	}
	
	method darDeComerA(ave){
		if(comidaDeAves != null){ // si tenemos comida
			ave.come(comidaDeAves) // alimentamos
			game.addVisualIn(comidaDeAves, random)// hacemos que la imagen de dicha comida re aparezca en un lugar aleatorio
			/*
			 * Luego de que esta visual se agregar en el lugar aleatorio, roque solo puede pasarle por debajo
			 * y al igual que con guardarAlimento, tampoco la puede volver a guardar.
			 */
			comidaDeAves = null // vaciamos nuestro storage de comida
		}else{
			game.say(self,"Por el momento no tenemos más comida")
		}
	}
}