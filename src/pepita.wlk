import ciudades.*
import roques.*
object pepita {
	var property energia = 100
	var property ciudad = null 

	var property posicion = game.at(3,3)
	var property imagen = "pepita1.png"

	method come(comida) {
		energia = energia + comida.energia()
		self.transformacion()
	}
	
	method volaHacia(unaCiudad) {
		if(energia > self.energiaParaVolar(self.distanciaEntreMiYCiudad(unaCiudad))){
			/* si la energia de pepita es > a la energia que gastaria luego de volar
			 *  hacia donde quiere 
			 */
			if (ciudad != unaCiudad) { 
			// si ciudad es != de la ciudad a la que quiero volar
				self.move(unaCiudad.posicion()) // voy
				ciudad = unaCiudad //la asigno
			}else if(ciudad == unaCiudad){
			 // si ya estoy en ciudad 'unaCiudad' entonces digo lo siguiente
				game.say(self, "Ya estoy en: " + ciudad.toString() + "!")
			}
		}else{
			game.say(self, "Dame de comer primero!")
		}
	}

	method energiaParaVolar(distancia) = 15 + 5 * distancia
	
	method distanciaEntreMiYCiudad(ciudadALaQueQuieroIr) = self.posicion().distance(ciudadALaQueQuieroIr.posicion())

	method move(nuevaPosicion) {
		energia -= self.energiaParaVolar(posicion.distance(nuevaPosicion))
		self.posicion(nuevaPosicion)
	}
	method transformacion(){
		if(energia>100){
			imagen = "pepita-gorda-raw.png"
		}else if(energia<10){
			imagen = "pepita.png"
		}
	}	
	method serAlimentado(){
		roque.darDeComerA(self)
	}
	
	//----------EVITAR ERROR DE QUE NO ENTIENDE EL MSJ--------
	// Esto sucede porque centre todas las colisiones en roque
	method serGuardadoEnRoque(){} // para evitar error de que no entiende el mensaje
}
