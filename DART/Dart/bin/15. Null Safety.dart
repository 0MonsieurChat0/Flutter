void main(List<String> args) {
  String? name = 'Juan Manuel';
  if (3 < 5) {
    name = null;
  }

  /* if (name != null) {      //? Esta sería la forma "primitiva" de hacerlo, es mejor hacerlo de la forma de abajo.
   print(name.length);
 }
 */
// final contains = name?.contains('a'); //! Puedo usar "!" el signo de interrogación cuando sé que al ejecutarse ese valor NO PUEDE ser null. |name!.contains('a');|
// final length = name?.length;
//? Si el condicional de arriba que hace null la variable no se cumple imprime el nombre, pero si es verdadero imprime null
//? Puedo imprimir solamente name sin ningún problema, pero si le quiero poner una función debo colocarle "?" a la variable para omita el null.
  print(name?.length);
  print(name?.contains('i'));
}
