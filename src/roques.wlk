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
		/* Problema de este método:
		 * Si roque ya tenia guardado un alimento y vamos y nos paramos en una celda
		 * que tiene otro se repite/loopea infinitamente en esa celda lo que pasa en
		 * este método hasta que me vaya de ahí.
		 * El punto de esto es que como se repite sin parar:
		 * Ejemplo tenias alpiste, te paraste aqui y podes salir con alpiste o con la manzana
		 * cuando por enunciado deberías salir con la manzana ya que era lo que no tenias antes.
		 */
	    if(comida != null && comidaDeAves == null){ // si hay comida alli && comidaDeAves no tiene nada
			game.removeVisual(comida) // quito visual
		}else if(comidaDeAves != null && comida != null){ // si tenemos una comida guardada & hay comida alli
			game.removeVisual(comida)// quito la visual de la comida
			game.addVisualIn(comidaDeAves, posicion.clone()) // agregamos la imagen de la comida que teniamos previamente

		}
		comidaDeAves = comida
	}
	
	method darDeComerA(ave){
		if(comidaDeAves != null){ // si tenemos comida
			ave.come(comidaDeAves) // alimentamos
			game.addVisualIn(comidaDeAves, random)// hacemos que la imagen de dicha comida re aparezca en un lugar aleatorio
			comidaDeAves = null // vaciamos nuestro storage de comida
		}else{
			game.say(self,"Por el momento no tenemos más comida")
		}
	}
}