void returnText() {
  print("Numbers");

  int cinco = 5;
  String cincoPontoCinco = "5.5";
  var resultado = cinco + double.parse(cincoPontoCinco);
  resultado.toInt();
  print(resultado.runtimeType);

  double qwerty = 14.4;
  print(qwerty.ceil()); // Sempre arredonda para cima.
  print(qwerty.floor()); // Sempre arredonda para baixo.
  print(
    qwerty.round(),
  ); // Arredonda para o mais próximo,.>= 5? paara cima, .< 5? para baixo, arredonda para o inteiro mais próximo.

  num numero = 3.9;
  // toInt é método do tipo NUM e simplesmente EXCLUI a parte decimal!
  print(numero.toInt());
  print(numero.toDouble());

  print(cinco.isEven);
  print(cinco.isOdd);

  // % é módulo, retorna o resto, agora ~/ retorna a parte inteira da divisão
  int dezessete = 17;

  print(dezessete / cinco); // divisão comum
  print(dezessete % cinco); // resto da divisão
  print(dezessete ~/ cinco); // parte inteira da divisão

  int incremento = 3;

  print(incremento++); // primeiro lê, na linha de baixo incrementa, então essa linha ainda imprime 3
  print(incremento); // aqui já incrementou


  int incremento2 = 3;
  print(++incremento2); // já incrementa na mesma linha
}
