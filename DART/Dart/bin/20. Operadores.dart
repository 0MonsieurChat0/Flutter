void main() {
  // var initial = '';
  final familyName = 'Deivyd Navarro';
  //! Este es un operador ternario que reemplaza las lineas de código de abajo de los if/else.
  final initial = familyName.isNotEmpty ? familyName[0] :  'N/A';

/*  if (familyName.length > 20) {
    initial = familyName[0];
  } else{
    initial = 'N/A';
  }
  */

print(initial);
}