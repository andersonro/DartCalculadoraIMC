import 'dart:convert';
import 'dart:io';

class ConsoleUtils {

  static String lerInput(String texto) {
    print(texto);
    var line = stdin.readLineSync(encoding: utf8) ?? "";
    return line;
  }

  String lerString(String title) {
    var line = lerInput(title).trim();
    while(line.isEmpty) {
      line = lerString(title);
    }
    return line;
  }

  double lerDouble(String title) {
    double num = 0;
    var n = lerInput(title).trim();
    while(n.isEmpty) {
      n = lerInput(title).trim();
    }
    num = double.parse(n);
    return num;

  }
}