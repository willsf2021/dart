void returnText() {
  /*
 Final e Const
 */

  // Significa que já é inicializada em seu ESTADO FINAL, OU, caso declarada somente, a sua primeira atribuição será o seu ESTADO FINAL.
  final int teste;
  teste = 3;

  // Significa que DEVE SER INICIALIZADA, ou seja, quando declarada deve ter seu valor atribuído.
  const teste2 = 3;

  // Ambas fazem inferência de tipo, no entanto final é recomendado TIPAR na declaração ou inicialização:
  print(teste.runtimeType);
  print(teste2.runtimeType);

  final lista = [3, 4, 5];
  lista.add(7);
  lista.add(8);
  lista.add(9);
  // Em final list posso modificar o valor, mas não reatribuir.

  const lista2 = [3, 5, 7];
  // lista2.add(234);
  // Em const list não posso modificar nem reatribuir.
  print(lista);
  print(lista2);
}
