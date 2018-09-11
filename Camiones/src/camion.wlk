import cosas.*
object camion {
	var carga = []
	
	method cargar(cosa){ carga.add(cosa)}
	
	method descargar(cosa){carga.remove(cosa)}
	
	method pesoTotal(){return carga + self.tara()}
	
	method tara(){return 1000} //el peso de la tara es de 1 tonelada(1000 kilogramos)
	
	method pesoMaximo(){return 2500} //el peso maximo de un camion es de 2.5 toneladas(2500 kilogramos)
	
	method exedidoDePeso() { return self.pesoMaximo() < self.pesoTotal()}
	
	method objetosPeligrosos(n)= carga.filter(elemento.peligrosidad() > n ) 
	
	method objetosMasPeligrososQue(cosa) = cargar.filter(elemnto.peligrosidad()> cosa.peligrosidad())
	
	method puedeCircularEnRuta(nivelMaximoDePeligrosidad){return  isEmpty(self.obejtosPeligrosos(nivelMaximoDePeligrosidad)) }  
	
}
