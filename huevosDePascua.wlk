object huevoRepostero {
    method  calorias() = 750
    method tieneChocolateBlanco() = true
    method tieneChocolateAmargo() = false
    

}

object huevoMixto {
    method  calorias() = 900
    method tieneChocolateBlanco() = true
    method tieneChocolateAmargo() = false
    
}

object conejo {

    var peso = 10
    method peso() = peso
    method calorias() = peso * 10
    method tieneChocolateBlanco() = false
    method tieneChocolateAmargo() = true
    
}


object blisterHuevitos {
    var property cantHuevos = 10
    method  calorias() = 100 * cantHuevos + cantHuevos.div(5) * 150
    method tieneChocolateBlanco() = cantHuevos >= 5
    method tieneChocolateAmargo() = false

}

object matrioshka {
    var property otroHuevo = conejo
    var property decoracion = arbol 
    method calorias() = 3000 + decoracion.calorias() + otroHuevo.calorias()
    method tieneChocolateBlanco() = otroHuevo.tieneChocolateBlanco()
    method tieneChocolateAmargo() = true
 
}

object arbol {
    method calorias() = 150

  
}
object flor {
    var property cantDePetalos = 3

    method calorias() = cantDePetalos * 100 
  
}

object caseria {
    const huevosABuscar = []
    const chicos = []
    method agregarHuevo(lista) = huevosABuscar.addAll(lista) 
    method encontrarUnHuevoPorUnChico(unHuevo, unChico){
        if(self.fueEncontrado(unHuevo))
         chicos.comerHuevo(unHuevo)
         huevosABuscar.remove(unHuevo)
    }

    method faltanEncontrar() = huevosABuscar.size()
    method cuantosConChocoBlanco() = huevosABuscar.count({h=>h.tieneChocolateBlanco()}) 

    method fueEncontrado(unHuevo) = huevosABuscar.contains(unHuevo)
    method encontrarElPrimerHuevo(unChico) = if(!huevosABuscar.isEmpty()) 
                                            self.encontrarUnHuevoPorUnChico(huevosABuscar.first(),unChico)  
    method todosMenosElPrimero(unChico) {
        huevosABuscar.forEach({h=>self.encontrarUnHuevoPorUnChico(h, unChico)})
    }
    method losDeChocoBanco() = huevosABuscar.filter({h=>h.tieneChocolateBlanco()})
    method mayorCaloria() = if(huevosABuscar.isEmpty()) huevosABuscar.max({h=>h.calorias()}) 
  
}
object ana {
    const huevosQueComio = []
    method comer(unHuevo) = huevosQueComio.add(unHuevo)
    method estaEnfermo() = self.caloriasConsumidas()>5000 or self.leCaeMal()
    method caloriasConsumidas() = huevosQueComio.sum({h=>h.calorias()})
    method leCaeMal() = huevosQueComio.any({c=>c.tieneChocolateBlanco()})

}

object jose {
    var ultimoHuevo = conejo
    method comer(unHuevo) {ultimoHuevo=unHuevo}
    method estaEnfermo() = ultimoHuevo.tieneChocolateAmargo()
}

object tito {

    method comer(unHuevo) {}
    method estaEnfermo() = false
}









































