import 'dart:async';

import 'package:flutter_app/Calculadora.dart';

class MinhaTelaBloc {
  StreamController calcController = StreamController.broadcast();

  Stream get calcStream => calcController.stream;

  calcularSoma(int a, int b) {
    var c = Calculadora();
    var result = c.soma(valorA: a, valorB: b);

    calcController.sink.add(result.toString());
  }

  void dispose() {
    calcController.close();
  }
}
