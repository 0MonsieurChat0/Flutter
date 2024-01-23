void main() {

// final playerName = getPlayerName() ?? 'SinDía';   //?NullAware sirve tanto para funciones, propiedades de la variable que podría ser nulos.
// print(playerName);                                //? Este es un ejemplo de una propiedad que es null.

final playerName = getPlayerName();   //?NullAware sirve tanto para funciones, propiedades de la variable que podría ser nulos.
print(playerName?[0] ?? 'SinDía');

//Member access ?           (Este se usa cuando el dato qe queremos imprimir podría ser nulo, así que hay que usar también el aware.)
//Null Assertion operator ! (Este se usa cuando estamos seguros que el dato jamás será nulo, de tal modo que le decimos "sin lio, aceptelo")
}

String? getPlayerName(){
  if (DateTime.now().weekday == 4) {
    return 'Jueves';
  }
  return null;
}