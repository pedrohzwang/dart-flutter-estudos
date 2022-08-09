import 'package:meu_primeiro_app_flutter/faculAtividade/TipoTriangulo.dart';
import 'dart:math';

class Triangulo {

  Triangulo(this._lado1, this._lado2, this._lado3) {
    if (!isTrianguloValido()) {
      throw Exception('Triangulo invalido!');
    }
  }

  double _lado1;
  double _lado2;
  double _lado3;

  bool isTrianguloValido() {
    return _lado1 > 0 && _lado2 > 0 && _lado3 > 0
        && _lado1 + _lado2 > _lado3
        && _lado1 + _lado3 > _lado2
        && _lado2 + _lado3 > _lado1;
  }

  TipoTriangulo get tipoTriangulo {
    if (_lado1 == _lado2 && _lado2 == _lado3) {
      return TipoTriangulo.equilatero;
    } else if (_lado1 == _lado2 || _lado2 == _lado3 || _lado1 == _lado3) {
      return TipoTriangulo.isosceles;
    } else {
      return TipoTriangulo.escaleno;
    }
  }

  double get lado3 => _lado3;

  set lado3(double value) {
    _lado3 = value;
  }

  double get lado2 => _lado2;

  set lado2(double value) {
    _lado2 = value;
  }

  double get lado1 => _lado1;

  set lado1(double value) {
    _lado1 = value;
  }

  double get perimetro => _lado3 + _lado2 + _lado1;

  double get area {
    switch (tipoTriangulo) {
      case TipoTriangulo.equilatero:
        return (sqrt(3) * (_lado1 * _lado1)) / 4;
      case TipoTriangulo.isosceles:
        double ladoIgual = _lado1 == _lado2 ? _lado1 : _lado1 == _lado3 ? _lado1 : _lado3;
        double base = perimetro - ladoIgual * 2;
        double h = sqrt(ladoIgual * ladoIgual - (base * base / 4));
        return (base * h) / 2;
      case TipoTriangulo.escaleno:
        double p = perimetro / 2;
        //Formula de Heron
        return sqrt(p * (p - _lado1) * (p - _lado2) * (p - _lado3));
    }
  }
}