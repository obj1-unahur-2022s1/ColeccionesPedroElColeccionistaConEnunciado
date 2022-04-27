
object elCollarDeDiamantesDeLaAbuela{
	method valor() = 100000
	
	method quemar(){ }
}

object unaOllaDeHierro {
	method valor() = 200
	
	method quemar(){ }
		
}

object unaEstampillaDeArgentina{

	var antig = 100
	var indice = 10
	
	method valor(){
		return antig * indice
	}
	
	method quemar(){
		indice = 0
		
	}
}

object memoriaRamDDR {
	var capacidad = 4
	method valor() = capacidad * 100

	method alterarCapacidad(porc){
		capacidad = capacidad * porc
	}
	
	method quemar(){
		self.alterarCapacidad(0.01)
	}
	

}

object unLibroDeAventuras{
	var precio = 300
	
	method valor() = precio
	
	method quemar(){
		precio = 0
	}
}


object pedro{
	
	const elementos = []	

	method noTieneNada() {
		return elementos.isEmpty()
	}
	
	method encuentra(algo) {
		elementos.add(algo)
	}
	method cuantasCosasTiene() {
		return elementos.size()
	}
	
	method robo() {
		elementos.clear()
	}
	method mejorariaLaColeccionCon(algo) {
		return algo.valor() > elementos.last().valor()
	}
	method cotizacion() {
		return elementos.sum({e=> e.valor()} ) 
	}
	
	method valiosos() {
		return elementos.filter({algo => algo.valor()> 500})
	}
	
	method incendio(){
		elementos.forEach({e => e.quemar()})
	}
	
	method unPocoDeFuego(){
		elementos.last().quemar()
	}

	
}
