import 'package:flutter_app/Calculadora.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  var calculadora;

  setUp(() async {
    print("setup");
    calculadora = Calculadora();
  });

  group("Teste Calculadora", () {
    test('SOMA', () {
      expect(calculadora.soma(valorA: 2, valorB: 2), 4);
    });

    test('SUBTRACAO', () {
      expect(calculadora.subtracao(valorA: 5, valorB: 3), 2);
    });

    test('MULTIPLICACAO', () {
      expect(calculadora.multiplicacao(valorA: 3, valorB: 3), 9);
    });

    test('DIVIZAO', () {
      expect(calculadora.divizao(valorA: 6, valorB: 2), 3);
    });
  });
}
