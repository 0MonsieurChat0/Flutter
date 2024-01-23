void main() {
  String? name;  //? De este modo inicializo una variable de modo null tal que en tiempo de ejecución se le asignará valor.

if (DateTime.now().weekday == 4) {
  name = 'Jueves';
}

final playerName = name ?? 'SinDía';   //?NullAware sirve tanto para funciones, propiedades de la variable que podría ser nulos.
                                       //! Estaes la forma corta de hacer lo de abajo.

//final playerName = name != null ? name : 'SinDía';    //! Este es el reemplazo a todo el código de abajo que está comentado.

/*
String playerName = 'SinDía';
print(playerName);

if(name != null){
  playerName = name;
}
*/
print(playerName);
}