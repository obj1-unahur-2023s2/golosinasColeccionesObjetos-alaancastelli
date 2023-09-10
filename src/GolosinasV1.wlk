object alfajor {
	var peso = 300
	var precio = 12
	
	method precio() = precio
	method peso() = peso
	method sabor() = "chocolate"
	method esLibreDeGluten() = false
	method recibirMordisco(){
		peso = peso * 0.8
	}
				
}
object bombon {
	var peso = 15
	var precio = 5
	
	method precio() = precio
	method peso() = peso
	method sabor() = "frutilla"
	method esLibreDeGluten() = false
	method recibirMordisco(){
		peso = 0.max((peso * 0.8) - 1)
	}
		
}
object caramelo {
	var peso = 5
	var precio = 1
	
	method precio() = precio
	method peso() = peso
	method sabor() = "frutilla"
	method esLibreDeGluten() = true
	method recibirMordisco(){
		peso = 0.max(peso - 1)
	}
}
object chupetin {
	var peso = 7
	var precio = 2
	
	method precio() = precio
	method peso() = peso
	method sabor() = "naranja"
	method esLibreDeGluten() = true
	method recibirMordisco(){
		peso = 2.max(peso * 0.9)
	}
	
}
object oblea {
	var peso = 250
	var precio = 5
	
	method precio() = precio
	method peso() = peso 
	method sabor() = "vainilla"
	method esLibreDeGluten() = false
	method recibirMordisco(){
		if (peso > 70){
			peso = peso*0.5
		}else{
			peso = peso * 0.75
		}
	}
}
	
object chocolatin{
	var peso = 130
	var precio = self.pesoInicial() * 0.5 
	
	method precio() = precio
	method pesoInicial()= 130
	method peso() = peso 
	method sabor() = "chocolate"
	method esLibreDeGluten() = false
	method recibirMordisco(){
		peso = 0.max(peso - 2)	
	}
}

object golosinaBaniada{
	var property golosina 
	var pesoBanio = 4
	

	method precio() = golosina.precio() + 2
	method peso() = golosina.peso() + pesoBanio
	method sabor() = golosina.sabor()
	method esLibreDeGluten() = golosina.esLibreDeGluten()
	method recibirMordisco(){
		golosina.recibirMordisco()
		pesoBanio = 0.max(pesoBanio - 2)
		
	}		
}

object pastillaTuttiFrutti {
	var property esLibreDeGluten  
	const sabores = ["frutilla","chocolate","naranja"]
	var cantidadDeMordidas = 0
	
	method precio(){ 
		if (esLibreDeGluten ){
		return 7} 
		else {
		return 10}
	}
	method peso() = 5 
	method sabor() = sabores.get(cantidadDeMordidas % sabores.size())
	method recibirMordisco(){
		cantidadDeMordidas++	
	}
}


























