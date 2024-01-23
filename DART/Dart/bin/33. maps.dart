void main (){
  Map<String,String> users ={};
users['user1'] = 'Juan';
print(users);
users['user2'] = 'Camilo';    //? Agregar más objetos al map.
print(users);
users['user1'] = 'Miguel';    //? Modificar un objeto del map.
print(users);


print("");
print("------------------------------------------------------");
print("Remover el primer usuario con users1");
final removed = users.remove("user1");
print("Removed me guarda el usuario eliminado: $removed");
print("$users");


print("");
print("------------------------------------------------------");
print("Con .clear limpio la lista.");
users.clear();
print(users);



print("");
print("------------------------------------------------------");
print("Si deseo agregar nuevos usuarios puedo hacerlo con la estructura de abajo.");
users.addAll({
    'user3':'Diego',
    'user4':'Fernando',
    'user5':'Roberto'
  },
  );
  print(users);






print("");
print("------------------------------------------------------");
print("La clave de este mapa es un entero y el valor es de tipo string.");
var products = /*<int,String>*/{              //? Esta es otra forma de definir un map. Si descomento lo de atras es porque quiero definir el tipo del map.
// Map<int,String> products = {
  1:"Celular Motorola",
  // 3: 90.5,  //? Si descomento la linea de arriba este dato no puede ir ya que yo definí eso como un string, no como un doble o objet.
};
print(products);

products[1] = "Mackbook Pro";
products[2] = "Tableta";
products[3] = "Telefono";
products[5] = "Ipad";
print(products);
products.remove(2);
print(products);


print("");
print("------------------------------------------------------");
print("Agregar si no existe la clave. |||| O podría usarlo para verificar si exite la clave de tal modo products.constainKey('age')  por ejemplo.");
 if (products.containsKey(0)==false){
  products[0] = "Mac mini";
 }
print(products);


print("");
print("------------------------------------------------------");
print("Agregar SI NO existe la clave, por medio del método .putIfAbsent, en este caso ignora 'Televisor LG' porque ya existe la clave, pero si quiero agregarlo debo cambiarle la clave que quiero ingresar, 3-> otro número.");
final element = products.putIfAbsent(
  4, () => 'Televisor LG.', 
  /*{  
    return "Televisor LG sin arrow funtion"; 
  },*/
);
print(products);
print(element);



print("");
print("------------------------------------------------------------");
print("Aquí con .removeWhere puedo pasar multiples valores de desee eliminar del map si el valor existe. Depende de los condicionales.");
/*final removedItems2 = */
products.removeWhere((int key, String value) {
  return key ==2 || key == 5;
});
// print(removedItems2);     //? No puedo asiganar un removeWhere a una variable ya que es tipo void lo que devuelve
print(products);



print("");
print("------------------------------------------------------------");
print("Aquí con .addAll puedo agregar multiples valores al map si el valor No existe y en caso de existir lo sobreescribirá.");

products.addAll({
    6:'AgregarMultiClave',
    7:'AgregarMultiClave2',
    8:'AgregarMultiClave3',
  }
  );
print(products);



print("");
print("");
print("------------------------------MAPS COMPLEJOS TIPO JSON------------------------------");





}