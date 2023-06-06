import 'package:calculadora/model/console_utils.dart';
import 'package:calculadora/model/pessoas.dart';

void main(List<String> arguments) {
  var nome = ConsoleUtils().lerString('Informe o nome:');
  var peso = ConsoleUtils().lerDouble('Informe seu peso:');
  var altura = ConsoleUtils().lerDouble('Informe sua altura:');

  var p1 = new Pessoas(nome, peso, altura);
  print(p1);
  print("----------------------------------");
}
