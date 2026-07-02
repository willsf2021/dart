void returnText(){
  // dynamic é um tipo de variável que, digamos, pode ter tanto seu valor alterado quanto seu tipo, em tempo de execução.
  dynamic df;
  dynamic dy = 2;
  print('Fui inicializada como como int: $dy: ${dy.runtimeType}\n');
  dy = "Qualquer coisa";
  print('Agora sou uma String $dy: ${dy.runtimeType}\n');
  dy = true;
  print('Agora sou bool $dy: ${dy.runtimeType}\n');
  dy = 2.34;
  print('E por fim posso ser double $dy: ${dy.runtimeType}\n');
  df = 3;
  print(df);

  // var podemos também apenas declarar ou declarar e atribuir (inicializar)
  /*
dynamic vs var

dynamic:
- Pode ser declarada com ou sem valor.
- Pode receber valores de qualquer tipo durante toda a execução.
- A variável continua sendo do tipo dynamic, mas o objeto armazenado nela
  possui um tipo concreto (int, String, bool, etc.).

var:
- Quando inicializada, o compilador infere seu tipo.
- Depois disso, o tipo da variável não muda.
- Apenas o valor pode ser alterado, desde que seja do mesmo tipo.
- É uma forma de pedir ao compilador que infira o tipo da variável a partir do seu valor inicial.
  */
}