/* void main() {
  printMessage(getDay);
  printMessage(getName); 
}

void printMessage(String Function() callback){
  print(callback());
}

// String getDay()=> DateTime.now().weekday.toString();
String getDay()=> '${DateTime.now().weekday}'; 
String getName()=> 'Deivyd Dario'; */
//!___________________________________________________________________

 void main() {
  printMessage(
    () => '${DateTime.now().weekday}');
    
    //!Lo de abajo es igual solo que arriba se usa la función flecha pero la idea es devolver la función  creada dentro en vez de por fuera como en el archivo anterior.
    /*{
      return '${DateTime.now().weekday}';
      },
  );*/
  printMessage(() => 'Deivyd Perilla');
  /*{
    return 'Deivyd Parra';
    },
  );*/ 
}

void printMessage(String Function() callback){
  print(callback());
}

// String getDay()=> DateTime.now().weekday.toString();
// String getName()=> 'Deivyd Dario'; 