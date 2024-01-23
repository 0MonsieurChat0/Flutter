void main(){
  



String name = "Deivyd";
String lastName = "Dario";
int age = 25;
bool masculino = true;

// String fullName = 'Nombre: '+ name + " " + lastName + ', ' + "Edad: " + age.toString(); //? Podemos hacer esto mismo pero de modo más sencillo con el metodo de abajo.
String fullInformation = 'Diga su apodo: "Monsieurchat", Nombre: $name $lastName, Edad: $age, Genero Maculino: $masculino, Tamaño: ${lastName.length}, Contiene la cadena io?: ${lastName.contains('io')}';
String fullInformation2 = 'Primer caraxter de Nombre: ${name[0]} $lastName, Edad: $age, Genero Maculino: $masculino, Tamaño: ${lastName.length}, Contiene la cadena io?: ${lastName.contains('IO')}';

print(fullInformation);
print(fullInformation2);






}