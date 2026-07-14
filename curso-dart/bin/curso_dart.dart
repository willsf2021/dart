import 'package:curso_dart/nullable.dart' as nullable;
import 'package:curso_dart/variaveis_base.dart' as variaveis_base;
import 'package:curso_dart/dynamic_var.dart' as dynamic_var;
import 'package:curso_dart/final_const.dart' as final_const;
import 'package:curso_dart/dados_built_in.dart' as dados_built_in;
import 'package:curso_dart/tipos_de_dados/num.dart' as num;
import 'package:curso_dart/tipos_de_dados/string.dart' as string;
import 'package:curso_dart/tipos_de_dados/boolean.dart' as boolean;
import 'package:curso_dart/tipos_de_dados/list.dart' as list;
import 'package:curso_dart/tipos_de_dados/set_type.dart' as set_type;

import 'package:curso_dart/desafio_etiquetar.dart' as desafio_1;
import 'package:curso_dart/desafio_horario.dart' as desafio_2;
import 'package:curso_dart/desafio_emails.dart' as desafio_3;




void main(List<String> arguments) {
  variaveis_base.returnText();
  dynamic_var.returnText();
  final_const.returnText();
  dados_built_in.returnText();
  nullable.returnText();

  num.returnText();
  string.returnText();
  boolean.returnText();
  list.returnText();

  List<int?>? entradaZeroDesafio;
  List<int?> entradaUmDesafio = [3, null, 8];
  List<int?> entradaDoisDesafio = [];
  List<int?> entradaTresDesafio = [null, null, null];
  List<int?> entradaQuatroDesafio = [1, 2, 3];

  print(desafio_1.etiquetar(entradaZeroDesafio));
  print(desafio_1.etiquetar(entradaUmDesafio));
  print(desafio_1.etiquetar(entradaDoisDesafio));
  print(desafio_1.etiquetar(entradaTresDesafio));
  print(desafio_1.etiquetar(entradaQuatroDesafio));


  print(desafio_2.horario(3671));
  print(desafio_2.horario(59));
  print(desafio_2.horario(86399));
  set_type.returnText();

  var emails = ["a@x.com", "b@x.com", "A@x.com", "c@x.com", "b@x.com"];
  print(desafio_3.emailsDuplicados(emails));
}
