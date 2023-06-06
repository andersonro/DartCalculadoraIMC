import 'package:calculadora/model/pessoas.dart' as person;
import 'package:test/test.dart';

void main() {
  test('Nova pessoa', () {
    var p = new person.Pessoas("Anderson", 85.0, 1.70);
    expect(p.toString(), contains("Anderson"));
  });

  test('calculado IMC', () {
    var p = new person.Pessoas("Anderson", 85.0, 1.70);
    expect(p.toString(), contains("Sobrepeso"));
  });

  test('Erro com peso 0', () {
    var p = new person.Pessoas("Anderson", 0, 1.70);
    expect(() => p.toString(), throwsA(TypeMatcher<ArgumentError>()));
  });

  test('Erro com altura 0', () {
    var p = new person.Pessoas("Anderson", 85, 0);
    expect(() => p.toString(), throwsA(TypeMatcher<ArgumentError>()));
  });

}
