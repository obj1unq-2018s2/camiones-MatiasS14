object knightRider {
	
	method peso(){return 500}
	
	method peligrosidad(){return 10}
	
}

object bumbleBee {
	var property esAuto= true
	
	method peso(){return 800}
	
	method peligrosidad() = if (esAuto) 15 else 30 
	
}

//adicional Deposito
object deposito {
	var property cosas=[bumbleBee,knightRider]
	method cargarCamionn(camion){
		cosas.forEach( {cosa=> camion.cargar(cosa)} )
	}
}
