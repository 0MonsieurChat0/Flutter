void main(){

//! Podemos definir listas de esos tres modos, pero los mejores son los dos primeros ya que tipamos los datos, 
//! del tercer modo no, quedan dinamicos.
List<int> numbers = [1,2,3,4,5];
//? var numbers = <int>[1,2,3,4,5];
//? var numbers = [];
//final  numbers = <int>[1,2];  //?Puedo usar este metodo tambien pero al ser un final SOLO lo puedo modificar 
                                //? con .clear para vaciarlo, no puedo asiganarle una lista vacía por ejemplo. 
                                //? -> numbers = <int>[]

// List<num> numbers = [0.5,1,2,3,4,5]; //? Cuando no sabemos si serás solo ints o boleans podemos usar "num" que abarca los dos tipos.
// List<Objet> numbers = [0.5,1,2,3,4,5,'String'];


print("Lista antes de agregar el 6 con el método .add");
print(numbers);
numbers.add(6);   //? De este modo podemos agregar elementos a una lista previamente creada.
print("Lista luego de agregar el 6 con el método .add()");
print(numbers);
numbers.clear();  //? Con este modo podemos vaciar una lista con ese metodo.
print("Lista luego de vaciarla con el método .clear()");
print(numbers);


//* Agregar una lista dentro de otra lista
List <int> numbers1 = [5,6,7,8,9];
List <int> numbers2 = [10,11,12,13,14];
print("");
print("Lista luego de agregar otra lista dento con el método .addAll(-VARIABLE-)");
numbers1.addAll(numbers2);
print(numbers1);


print("");
print("------------------------------------------------------");
print("Con .removeAt puedo quitar un elemento de la lista por posición.");
numbers1.removeAt(7);  //? Con este elimino el elemento de esa posición.
print(numbers1);


print("");
print("------------------------------------------------------");
print("Con .remove puedo quitar un elemento de la lista por 'nombre propio.'");
numbers1.remove(7);  //? Con este elimino el elemento de "7" de la lista. (Trabajar solo con datos primitivos de ser posible.)
print(numbers1);


print("");
print("------------------------------------------------------");
print("Con .removeWhere puedo quitar varios elementos de la lista por medio de una función.");
//? Por eso si modifico el "false" a una función podré FILTRAR en este caso todos los datos inpares.
//numbers1.removeWhere((element) => false);
numbers1.removeWhere((element) => element % 2 != 0);
print(numbers1);  



print("");
print("------------------------------------------------------");
print("Con .removeWhere puedo quitar varios elementos de la lista por medio de una función.");
//? Por eso si modifico el "false" a una función podré eliminar en este caso todos los datos pares.
//numbers1.removeWhere((element) => false);
numbers1.removeWhere((element) => element % 2 == 0);
print(numbers1);  


print("");
print("------------------------------------------------------");
print("Con .removeWhere puedo quitar varios elementos de la lista QUE ESTÉN REPETIDOS.");
List <int> numbers5 = [0,1,2,3,4,5,0,6,7,8,9,0];
//? Por eso si modifico el "false" a una función podré eliminar en este caso todos los datos pares.
//numbers1.removeWhere((element) => false);
numbers5.removeWhere((loquesea) => loquesea == 0);
print(numbers5); 


//todo ________________________________________________________________________________________________________________________________________________

print("");
print("------------------------------------------------------");
print("Definir una lista tipo final (Constante) que puede recibir nuevos datos en tiempo de ejecución");
final names = <String>[];
names.add("Darwin");
print(names);
names.addAll(["Santiago", "Juan", "Julian", "Darwin", "Alejandra", "Alejandra"]);
print(names);


print("");
print("------------------------------------------------------");
print("Si quiero eliminar un elemento de la lista solo debo usar .remove y si hay muchos elementos repetidos SOLO elimina el primero");
names.remove("Darwin"); //? Este remove tera un valor Booleano true si logra eliminar algo de la lista y false en caso de que no
print("Aquí solo elimié 'Darwin' de la lista $names");


print("");
print("------------------------------------------------------");
names.removeWhere((element) => element == "Alejandra");
print("Si uso está función puedo elimitar todos los elementos del mismo nombre: en este casi 'Alejandra'  $names");


print("");
print("------------------------------------------------------");
names.removeWhere((element){
  print("Elemento $element");
  return true;
}); //? "element" se AJUSTA al tipo de dato con el que esté trabajando, por eso este "element" es tipo String.
print("Se eliminan los datos de la lista si yo le doy valor 'true' a lo que retorna la función; si es 'false' me vuelve la lista entera, solo la itera.");
print(names);
print("También podemos usar .removeAt(), esta elimina el elemento en esa posición");


}