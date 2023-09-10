import GolosinasV1.*

object mariano {
	const golosinas = []
	const golosinasDeseadas= [chupetin,caramelo,chocolatin,alfajor,bombon,oblea,pastillaTuttiFrutti]
	const gustosDeseados = ["frutilla","vainilla","chocolate","naranja"]
	
	method compar(unaGolosina){
		golosinas.add(unaGolosina)
	}
	method desechar(unaGolosina){
		golosinas.remove(unaGolosina)
	}
	method cantidadDeGolosinas(){
		golosinas.size()
	}

	method tieneLaGolosina(unaGolosina){
		golosinas.contains(unaGolosina)
	}
	method probarGolosinas(){
		golosinas.forEach(	{golosina => golosina.recibirMordisco()	}	)
	}
	method hayGolosinasSinTACC(){
		golosinas.find(	{golosina => golosina.esLibreDeGluten()	}	)
	}
	method esPreciocuidado(){
		golosinas.all({golosina => golosina.precio() <= 10})
	}
	method golosinaDeSabor(unSabor){
		golosinas.find(	{golosina => golosina.sabor() == unSabor	})
	}
	method golosinasDeSabor(unSabor){
		golosinas.filter(	{golosina => golosina.sabor() == unSabor}	)
	}
	method sabores(){
		golosinas.map(	{golosina => golosina.sabor()}).asSet()
	}
	method golosinaMasCara(){
		golosinas.max(	{golosina => golosina.precio() }	)
	}
	method pesoGolosinas(){
		golosinas.sum(	{golosina => golosina.peso()	}	)
	}
	method golosinasFaltantes(golosinasDeseadas){
		golosinasDeseadas.remove(golosinas)
		return golosinasDeseadas
	}
	method gustosFaltantes(gustosDeseados){
		
		gustosDeseados.remove({gustos => gustos.sabor()})
		return gustosDeseados
	}
	
}	
