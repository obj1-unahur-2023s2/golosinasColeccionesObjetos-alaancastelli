object mariano {
	const golosinas = []
	
	method comprar(unaGolosina) {
		golosinas.add(unaGolosina)
	}
	method cantidadDeGolosinas(){
		golosinas.size()
	}
	method probarGolosinas(){
		golosinas.forEach(	{ g => g.recibirMordisco()} )
	}
	
	
	method sabores() = golosinas.map(	{g => g.sabor()}	).asSet()
}



//pastilla tutti-frutti LISTA DE SABORES
object tutiFrutti{
	const sabores = ["frutilla","chocolate","naranja"]
	var peso = 5
	var property libreDeGluten = false
	var contador= 0
	
	method peso()=peso
	method peso(unPeso) { peso = unPeso }
	method precio() = if(libreDeGluten){7}else{10}
	method sabor() = sabores.get(contador % sabores.size())
	method recibirMordisco(){
		contador += 1
	}
	
	
	
}
object bombon {
	var peso = 15
	
	method libreDeGluten() = true
	method peso(unPeso) { peso = unPeso }
	method peso()= peso
	method sabor() = "frutilla"
	method precio() =  5
	method recibeMordisco() { peso -= peso * 0.2 }
	
}
