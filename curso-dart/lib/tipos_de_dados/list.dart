void returnText() {
  List<List<int>> provaLista = [
    [2, 3, 5, 3, 5, 6, 7],
  ]; // Lista de Listas tipo int
  var listSemTipo = [23, 3];
  List<Object> lista2 = [
    2,
    [23, "string"],
    true,
  ]; // Lista de Objects, tudo no Dart é objeto.
  List<Object?> lista3 = [
    2,
    [23, "string"],
    true,
    null,
  ]; // Lista de Objects, tudo no Dart é objeto. NULLABLE

  List<int>? c;
  /* 
  ? fora do tipo da lista indica que a lista pode ser declarada sem valores 
  atribuídos, mas nao siginifica que posso conter valores null dentro da lista
  */

  List<int?>? d = [
    null,
    2,
    3,
  ]; /* Para também poder haver valore nulos devemos ter dois ?, um dentro e outro fora do tipo */

  print(provaLista);
  print(listSemTipo);
  print(lista2);
  print(lista3);
  print(c);
  print(d.isEmpty);

  var exAddAll = [2, 45];
  List<num> list_1 = [1, 2, 3];
  print(list_1);
  list_1.add(2);
  print(list_1);
  list_1.addAll(exAddAll);
  /* addAll recebe um iterable, ou seja, uma lista, e adiciona nao uma uma lista em si dentro de outra mas cada elemento isoladamente */
  print(list_1);

  // spread operator
  List<int> spread = [12, 4, 65];
  print("Lista que usarei para fazer o spread $spread");
  List<int> recebeSpread = [1, 1, 1];
  print("Lista que usarei para receber o spread $recebeSpread");
  recebeSpread = [...recebeSpread, ...spread];
  print("Resultado do spread operator $recebeSpread");

  // Dois pontos concatena métodos
  List<int> doisPontos = [2, 3, 4, 4]
    ..add(2)
    ..addAll([3, 5]);

  // 2, 3, 4, 4, 2, 3, 5
  print(doisPontos);

  List<int>? qualquer;

  qualquer = doisPontos..add(2);
  print(qualquer);
  // 2, 3, 4, 4, 2, 3, 5, 2
  // Remover valores
  doisPontos.remove(
    2,
  ); // remove por valor, remove apenas a primeira correspondencia
  // 3, 4, 4, 2, 3, 5, 2
  print(doisPontos);
  doisPontos.removeAt(0); // remove pelo index
  // 4, 4, 2, 3, 5, 2
  print(doisPontos);
  List<int> cle = [2, 53, 12];
  print(cle);
  cle.clear(); // Remove todos os elementos
  print(cle);

  // indexOf
  print(doisPontos);
  print(doisPontos.indexOf(2)); // retorna o index do elemento 2, caso nao exista na lista retorna -1


  // Collection If
  List<String> nomes = ["Wilson", "Érica", "Luna"]; // Lista comum
  print(nomes);
  var euQuero = true;
  List<String> nomesIf = ["Wilson", "Érica", if(euQuero) "Luna"];
  print(nomesIf);

    // Collection For
    List<String> listaFor = [
      "#0",
      for(var i in doisPontos) "#$i"
      ];
    
    print(listaFor);
}
