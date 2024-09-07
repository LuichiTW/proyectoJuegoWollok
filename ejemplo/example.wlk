object manic {
  var estrellas = 0
  var globos = 50

  method encontrarEstrellas() {
    estrellas += 8
  }
  method regalar() {
    estrellas = 0.max(estrellas - 1)
  }
  method tieneTodoListo() = estrellas >= 4
}

object fiesta {
  var host = manic

  method estaPreparada() = host.tieneGlobosNecesarios() && host.tieneTodoListo()   
}

object chuy {
  var globos = 50
  method tieneTodoListo() = true 
}

object capy {
  var latas = 0
  var globos = 50
  method recolectar() {
    latas += 1
  }

  method reciclar() {
    latas = 0.max(latas - 5)
  }

  method tieneTodoListo() = latas.even()
}