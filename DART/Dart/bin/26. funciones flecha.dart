void main() {
  print(
    createUserName('Juan', 'Parra'),
  );

  printMessage();
}

String createUserName(String firtName, String lastName) => '$firtName$lastName'; 
//!Este es el equivalente al código de abajo usando la función flecha

/*
String createUserName(
  String firtName,
  String lastName,
) {
  return '$firtName$lastName';
}
*/

void printMessage() => print('Test');