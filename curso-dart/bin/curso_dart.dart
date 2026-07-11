import 'package:curso_dart/nullable.dart' as nullable;
import 'package:curso_dart/variaveis_base.dart' as variaveis_base;
import 'package:curso_dart/dynamic_var.dart' as dynamic_var;
import 'package:curso_dart/final_const.dart' as final_const;
import 'package:curso_dart/dados_built_in.dart' as dados_built_in;
import 'package:curso_dart/tipos_de_dados/num.dart' as num;
import 'package:curso_dart/tipos_de_dados/string.dart' as string;
import 'package:curso_dart/tipos_de_dados/boolean.dart' as boolean;


void main(List<String> arguments) {
  variaveis_base.returnText();
  dynamic_var.returnText();
  final_const.returnText();
  dados_built_in.returnText();
  nullable.returnText();

  num.returnText();
  string.returnText();
  boolean.returnText();
}
