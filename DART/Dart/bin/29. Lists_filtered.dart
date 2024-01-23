void main(){
  print("");
print("------------------------------------------------------");
final subjets = <String>["Cálculo", "Física", "Automatas", "Inglés", "Francés", "Química", "Filosofía"];
final index = subjets.indexWhere((element) => element == "Inglés");
//? .indexOf("Física") hace lo mismo que index where pero solo para datos primitivos.
print("Si igualo la lista con una función final como esta me tira la posición del elemento:  $index");


print("");
print("------------------------------------------------------");
print("Con .where puedo FILTRAR varios elementos de la lista por medio de una función, esto NO modifica la lista, solo tomo los datos y los filtro.");
final filtered = subjets.where((element) => element.startsWith("F"));
// final filtered = subjets.where((element) => element.startsWith("F")).toList(); //!Si por algún motivo quisiera convertilo a lista lo puedo hacer de este modo.
final filtered2 = subjets.lastWhere((element) => element.startsWith("F"));
final filtered3 = subjets.lastWhere((element) => element.startsWith("algoQueNoEstáEnLaLista"), orElse: ()=> "No hay nigún elemento con llamado así en la lista.");
print("Si uso .where y .startWith('F') retornaré todos los elementos que Inicien con la letra 'F': $filtered");
print("Si uso .lastWhere y .startWith('F') retornaré el último elemento que Inicien con la letra 'F': $filtered2");
print("Si uso .lastWhere y .startWith('algoQueNoEstáEnLaLista') retornaré:'' $filtered3'' ya que hace uso de ''OrElse''");
}