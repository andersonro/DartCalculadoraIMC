class Pessoas {
  String _nome = "";
  double _peso = 0;
  double _altura = 0;

  Pessoas(this._nome, this._peso, this._altura);

  String get nome => _nome;

  set nome(String value) {
    _nome = value;
  }

  double get peso => _peso;

  double get altura => _altura;

  set altura(double value) {
    _altura = value;
  }

  set peso(double value) {
    _peso = value;
  }

  @override
  String toString() {
    var string = "nome: ${_nome}, peso: ${_peso}, altura: ${_altura}, IMC = ${calculaIMC().round()} -> ${retornaIMC()}";
    return string;
  }

  double calculaIMC() {
    if (peso < 1) {
      throw ArgumentError("O peso não pode ser zero!");
    }
    if (altura == 0) {
      throw ArgumentError("A altura não pode ser zero!");
    }
    return peso / (altura * altura);
  }

  String retornaIMC(){
    var t = "";
    var imc = calculaIMC();
    if (imc < 16) {
      t = "Magreza grave";
    } else if (imc >=16 && imc < 17) {
      t = "Magreza moderada";
    } else if (imc >=17 && imc < 18.5) {
      t = "Magreza leve";
    } else if (imc >=18.5 && imc < 25) {
      t = "saudável";
    } else if (imc >=25 && imc < 30) {
      t = "Sobrepeso";
    } else if (imc >=30 && imc < 35) {
      t = "Obesidade grau I";
    } else if (imc >=35 && imc < 40) {
      t = "Obesidade grau II";
    } else {
      t = "Obesidade grau III";
    }
    return t;
  }

}