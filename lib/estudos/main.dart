import 'package:meu_primeiro_app_flutter/estudos/heranca.dart';

void main() {
  Cachorro cachorro = Cachorro('Rex', 6);
  Gato gato = Gato('Januario', 3);

  List<Animal> animais = [cachorro, gato];

  animais.forEach((animal) {
    if (animal is Cachorro) {
      print('Temos um cachorro!');
    } else if (animal is Gato) {
      print('Temos um gato!');
    } else {
      print('Desconheco!');
    }
  });
}
