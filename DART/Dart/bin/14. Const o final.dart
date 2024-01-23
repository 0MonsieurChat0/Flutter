void main(){


// final String nombre = "Juan";
// nombre = "Camilo"; //? No se puede modificar porque final lo hace inmutable.


final DateTime currentDay = DateTime.now();
print(currentDay);
//?No podré modificar el valor abajo debido a que es un valor tipo final que lo hace contante.
// currentDay =  DateTime.parse("2022-01-01");

//? final "TIPODEDATO" nombreVariable = ValorVariable;


const int limit = 100;
// limit = 10;    //? Si hago eso me dará error debido a que no puedo asignarle un valor contante a 
                  //? una variable y modificarlo
print(limit);
}