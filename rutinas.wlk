class Rutina {
  method caloriasQuemasdas(tiempo) {
    throw new Exception(message = "debe especificar calorias") //se tiene que implementar las calorias quemadas

  }
}

class Running inherits Rutina(){
  const property nombre = "" 
  const property intensidad = 0

  method caloriasQuemadas(tiempo) {
    const descanso =  if (tiempo > 20) 5 else 2
    return 100 * (tiempo -descanso ) * intensidad
    
  }
}

class Maraton inherits Running  {
  override method caloriasQuemadas(tiempo) {
    return tiempo * 2
  }
}

class Remo inherits Rutina{
  const property nombre = ""
  const property intensidad = 1.5

  method caloriasQuemadas(tiempo) {
    const descanso = tiempo / 8
    return 100 * (tiempo - descanso ) * intensidad    
  } 
}

class RemoCompeticion inherits Remo(intensidad = 1.7) {

    override method caloriasQuemadas(tiempo) {
        const descansoNormal = tiempo / 5
        const descanso = descansoNormal - 3.max(2)
        return 100 * (tiempo - descanso) * intensidad
      
    }
}

class Persona {
    const peso = 0
    method puedeHacerRutina(rutina) {
        throw new Exception (message = "No puede hacer rutina ") // no todos pueden realizar la turtina 
    }

    method tiempoEjercicio() {
        throw new Exception (message = "se debe especificar tiempo de ejercicio")
    }

    method kilosPorCalorias() {
        
    }

    method pesoPerdido() {
      throw new Exception (message ="")
    }
    method aplicarRutina(rutina) {
        if (self.puedeHacerRutina(rutina)){
            peso = peso - self.pesoPerdido().truncate(3)
        }
      
    }
}


class PersonaSedentaria inherits Persona{
  const property nombre = ""
  const property tiempoDeEjercicio = 0

  override method puedeHacerRutina(rutina) {
    return peso > 50
  }

  override method tiempoEjercicio(rutina){
    return tiempoDeEjercicio

  }
    
}

class PersonaAtleta inherits Persona {


  
}