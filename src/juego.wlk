import wollok.game.*

object juego {
  method iniciar() {
    
    game.addVisualCharacter(protagonista)
    game.onCollideDo(protagonista, {algo=> algo.tocar()})
    
    self.generarEnemigos()
  }

  method generarEnemigos() {
    //cambiar el comportamiento al aparecer
    //game.onTick(1000, "amparece enemigo", {new Enemigo().aparecer()})
  }
}

object protagonista{
    var property position = game.origin()
    var property  encara = "frente" //variable para saber a que lado esta mirando, usado para moverse y seleccionar bloques
    var property vida = 100
    var property monedas = 0
    var inventario = [azada, hacha, semillas, balde]  


    //esta feo el protagonista, mejorar el diseño para ocupar todo el tile
    method image() = "protagonista.png"
    method usarHerramienta(herramienta) {
      herramienta.usar()
    }

    //posible cambio para el selector de bloque
    method interactuar(bloque) {
        bloque.reaccion()
    }
}

class Enemigo{
    method tocar() {
        //quitar vida protagonista
      
    }
}

class Herramienta {
  method usar() {
    //cambia el comportamiento por tipo de herramienta
    
  }
  
}


object azada{
      
}

object hacha{
      
}
object balde{
      
}
object semillas{
      
}