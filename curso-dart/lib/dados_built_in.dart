void returnText() {
  // Tipos de dados Built-In são tipos que veem instalados automaticamente junto com Dart quando instalamos, sendo:
  // num,int.double,string,boolean,list,ser,map,runes,null,object,future,stream,iterable,never,dynamic,void

  print("------------------------------------------------Dados Built-In");
  num numero = 2; // Contém int e double, pode ser ambos
  print(numero);
  // Coleções de Dados
  List lista = [2, 453, 2];
  Set sett = {1, 2, 3};
  Map mappa = {"nome": "Wilson", "Sobrenome": "Pereira Júnior"};
  Runes runa = new Runes('\u{1f605}');

  print(sett);
  print(lista);
  print(mappa);
  print(new String.fromCharCodes(runa));
}
