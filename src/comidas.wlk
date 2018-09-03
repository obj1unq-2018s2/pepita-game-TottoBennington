import roques.*

object manzana {
	const property imagen = "manzana.png"
	method energia() = 80

	method serGuardadoEnRoque(){
		roque.guardarAlimento(self)
	}
	
	//----------EVITAR ERROR DE QUE NO ENTIENDE EL MSJ--------
	// Esto sucede porque centre todas las colisiones en roque
	method serAlimentado(){}//para evitar problemas de que no comprende el mensaje
}

object alpiste {
	const property imagen = "alpiste.png"
	method energia() = 5
	
	method serGuardadoEnRoque(){
		roque.guardarAlimento(self)
	}

	//----------EVITAR ERROR DE QUE NO ENTIENDE EL MSJ--------
	// Esto sucede porque centre todas las colisiones en roque
	method serAlimentado(){}//para evitar problemas de que no comprende el mensaje
}
