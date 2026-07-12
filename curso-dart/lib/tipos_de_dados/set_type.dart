void returnText(){
  // set é como List, mas os valores são unicos e nao ordenados

  var lista = [1,2,3,4,4,5,5];
  print(lista[0]);
  var sett = {1,2,2,3,4,4}; // não há erro de compilação, apenas warning, mas ao utilizar as duplicatas são removidas.
  // set[0] -> não existe, nao podemos fazer referencia por index
  print(sett); // {1, 2, 3, 4}

  /*
   Como criar um set?
  */
  var sett1 = Set();
  sett1 = {if (2>1) 3, for(var i in lista) 452 + i}; // Continuo podendo usar collection for e collection if
  Set<String> sett2 = {"Ola", "Boa noite"};
  var sett3 = {2,3,4};
  var sett4 = <int>{...sett1}; // posso usar spread operator
  var sett5 = {}; // isto é um Map

  sett4.add(1);
  sett4.add(2);
  sett4.add(3);
  sett4.add(4);
  sett4.add(5);

  sett4.addAll({22,33,44}); // ou [22,33,44]
  // podemos usar remove por valor
  sett4.remove(456);
  // podemos remover uma lista de valores com removeAll, passando um set ou uma lista para isso.
  sett4.removeAll({453,454});
  // podemos usar o removeWhere passando uma condiçao
  sett4.removeWhere((item) => item > 400);

  print(sett4);

  // intersection, union e difference podem ser usados

  var exemplo1 = {1,2,3};
  var exemplo2 = {2,5,6};
  var exemplo3 = {6,9,10};

  print(exemplo1);

  print(exemplo1.intersection(exemplo2));
  print(exemplo1.union(exemplo2));
  print(exemplo3.difference(exemplo2));
  print(exemplo1);

}