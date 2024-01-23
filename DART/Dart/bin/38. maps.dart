void main(){
              //!Clave, tipo dato que recibe. Con "?" delante deL tipo de dato aceptará valores nulos. Object?
final usuario = <String, Object>{   //?Usaré objet debido a que voy a almacenar diferentes tipos de datos, por lo cual lo mejor es usar object que almacena todo, ya que es la clase SUPER.
  "name":"José",
  "LastName":"Ramirez",
  "age":25,
  "email":"joseR@gmail.com",
  "salary":1000.99,
  "enabled":true,

  "location":{
    "country":"Colombia",
    "conuntryCode":"CO",
    "city":"Bucaramanga",
  },
"pets":[
  {
    "name":"Sasha Pelusa",
    "age":3,
  },
  {
    "name":"Tony",
    "age":4,
  },
]
};

print("Edad: ${usuario["age"]}");
print("Email: ${usuario["email"]}");
print("Country: ${usuario["location"]}");
// print("Country: ${usuario["location"]["country"]}"); //? No se puede interpretar así ya que el código Es un objet o nulo.

//! Puedo hacer lo mismo de estos dos modos, personalmente me gusta más el primero modo.
//* Aquí debo primero acceder al main que es usuario, luego a location y finalmente si al dato que quiero obtener.
final country = (usuario["location"] as Map<String,String>)["country"];
print(country);



final location = usuario['location'];
if (location is Map<String,String>){
  print(location['country']);
}


}