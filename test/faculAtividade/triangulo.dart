import 'package:flutter_test/flutter_test.dart';
import 'package:meu_primeiro_app_flutter/faculAtividade/TipoTriangulo.dart';
import 'package:meu_primeiro_app_flutter/faculAtividade/Triangulo.dart';

void main() {
  group('Testes triangulo', () {
    test('Deve lancar uma excecao quando os lados do triangulo forem invalidos',
        () {
      expect(() => Triangulo(20.0, 4.0, 5.0), throwsException);
    });

    test('Deve lancar uma excecao quando algum lado do triangulo for negativo',
        () {
      expect(() => Triangulo(3.0, -4.0, 5.0), throwsException);
    });

    test(
        'Triangulo deve ser instanciado quando os lados tiverem valores validos',
        () {
      Triangulo triangulo = Triangulo(3.0, 4.0, 5.0);

      expect(triangulo, isNotNull);
    });

    test('Triangulo com tres lados iguais deve ser equilatero', () {
      //Preparacao dos objetos/mocks
      Triangulo triangulo = Triangulo(3.0, 3.0, 3.0);

      // Execucao e obtencao dos resultados
      TipoTriangulo? tipoTriangulo = triangulo.tipoTriangulo;

      // Avaliacao dos resultados
      expect(tipoTriangulo, equals(TipoTriangulo.equilatero));
    });

    test('Triangulo com dois lados iguais deve ser isosceles', () {
      Triangulo triangulo = Triangulo(3.0, 3.0, 4.0);

      TipoTriangulo? tipoTriangulo = triangulo.tipoTriangulo;

      expect(tipoTriangulo, equals(TipoTriangulo.isosceles));
    });

    test('Triangulo com todos os lados diferentes deve ser escaleno', () {
      Triangulo triangulo = Triangulo(3.0, 4.0, 5.0);

      TipoTriangulo? tipoTriangulo = triangulo.tipoTriangulo;

      expect(tipoTriangulo, equals(TipoTriangulo.escaleno));
    });

    test('Deve calcular o perimetro do triangulo', () {
      Triangulo triangulo = Triangulo(3.0, 4.0, 5.0);

      expect(triangulo.perimetro, equals(12.0));
    });

    test('Deve calcular a area do triangulo equilatero', () {
      Triangulo triangulo = Triangulo(3.0, 3.0, 3.0);

      expect(triangulo.area.toStringAsFixed(2), equals('3.90'));
    });

    test('Deve calcular a area do triangulo isosceles', () {
      Triangulo triangulo = Triangulo(4.0, 5.0, 4.0);

      expect(triangulo.area.toStringAsFixed(2), equals('7.81'));
    });

    test('Deve calcular a area do triangulo escaleno', () {
      Triangulo triangulo = Triangulo(3.0, 4.0, 5.0);

      expect(triangulo.area.toStringAsFixed(2), equals('6.00'));
    });

    test('Tipo do triangulo deve ser recalculado com lado alterado', () {
      Triangulo triangulo = Triangulo(3.0, 4.0, 5.0);
      expect(triangulo.tipoTriangulo, equals(TipoTriangulo.escaleno));

      triangulo.lado1 = 4.0;
      expect(triangulo.tipoTriangulo, equals(TipoTriangulo.isosceles));
    });
  });
}
