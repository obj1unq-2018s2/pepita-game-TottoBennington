import roques.*

object manzana {
	const property imagen = "manzana.png"
	method energia() = 80

	method serGuardadoEnRoque(){
		roque.guardarAlimento(self)
	}
	method serAlimentado(){}//para evitar problemas de que no comprende el mensaje
}

object alpiste {
	const property imagen = "alpiste.png"
	method energia() = 5
	
	method serGuardadoEnRoque(){
		roque.guardarAlimento(self)
	}
	
	method serAlimentado(){}//para evitar problemas de que no comprende el mensaje
}
