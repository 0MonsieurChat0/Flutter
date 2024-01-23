void main() {
  ///hola
  
  /*
    Hola. 
  */
  print('Hola, dart');

  var myString = "Hola, probando Dart";
  myString = "Hola nuevamente 'he vuelto'";
  // helloDart = 6;   Esto me tira error ya que no puedo cambiar la bvariable a otro pipo de dat, solo puedo modificar su valor por el mismo tipo.
  print(myString);


  //! Enteros
  var myInt = 9;
  myInt = myInt + 4;
  print(myInt);
  print(myInt - 4);
  
  //! Doble o decimales
  var myDoble = 6.5;
  print(myDoble);
  
  //!Boolean o falso o verdadero
  var myBool = false;
  myBool = true;
  print(myBool);



  //! CONSTANTES

  //* Contantes inalterable.

  const myConst = "Mi propiedad constante";
  //myConst = "Mi nuevo valor constante"; //?Error ya que no se puede modificar.
  print(myConst);

  //* Contantes modificable/ejecutable en tiempo de ejecución.

  final myFinalConst = myInt;
  /// Se trae este valor desde la linea 17.
  print(myFinalConst);


  //!CONDICIONALES

  if (myInt == 10 && myString == "Hola nuevamente"){
    print("El valor es 10 y my string es hola nuevamente");
  } 
  else if(myInt ==11  || myString == "Hola, probando Dart"){
    print("El valor es 11");
  }
  else {
    print("El valor NO es 10 ni 11");
  }

//!Funciones
myFuntion();

//Todo:  Esta función es de tipo String por eso debe ser guardada en una variable antes de poder imprimirla.
myFuntionWithReturn();
var myReturn = myFuntionWithReturn();
print(myReturn);

//!LISTAS

//* Lista normal
var mylist = ["Deivid", "Parra", "@MonsieurChat", 25, "Deivid"];
print("");
print("Esta es una lista normal que permite repetir datos, además de imprimirle un dato especifico de la pocisión en la lista");
print(mylist);
print(mylist[2]);

//* Lista tipo "SET"
var mylistSet = {"Deivid", "Parra", "@MonsieurChat", 25, /*"Deivid"*/};  //?El tipo set revisa que no hayan datos repetidos
print("");
print("Esta es una lista tipo set que no permite repetir datos.");
print(mylistSet);

//* Lista tipo "SET"
var mylistMap = {"Deivid": 25, "MonsieurChat": 12};
print("");
print("Esta es una lista tipo map que permite asignar valores a los datos y trarlos");
print(mylistMap);
print(mylistMap["MonsieurChat"]);
  //? Este es otro modo de crear listas.
var myMap2 = Map<String, int>();
myMap2["Julian"] = 25;
myMap2["Camilo"] = 28;
print(myMap2);


//! ITERADORES

for (final value in mylist){
  print(value);
}


var myCounter = 0;
print(myInt);

while(myCounter <= myInt){
print(myCounter);
myCounter++;            //? Los tres son lo mismo, este es menor codigo.
// myCounter += 1;
// myCounter = myCounter + 1;
}


//!CLASES
var myClass = MyClass("Deivyd", 25);
print("");
print("Creando Clases.");
print(myClass.name);
print(myClass.age);

//! ENUMERADOS
print("");
print("Aquí puedo imprimir la lista de los valores contenidos en el enum.");
print(MyEnum.dart);
print(MyEnum.values);


}
//todo ////////////////////////////////////////////////////////////////////////////////////////////////



//! FUNCIONES
//* Función normal
void myFuntion(){
  print("");
  print("Esto es una función, void significa vacío");
}

//* Función de tipo especifico
String myFuntionWithReturn(){
  print("");
  return "Esto es una función CON RETORNO";
}

//*___________________________________________________
//!CLASES
class MyClass {
  String name;
  int age;

  MyClass (this.name, this.age){}
}

//! ENUMERADOS
enum MyEnum{dart, python, swift, java, kotlin}