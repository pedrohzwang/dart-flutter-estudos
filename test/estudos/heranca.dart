import 'package:meu_primeiro_app_flutter/estudos/heranca.dart';

void main() {
  Cachorro cachorro = Cachorro('Rex', 6);
  Gato gato = Gato('Januario', 3);
  Hamster hamster = Hamster('Januario segundo', 3);

  List<Animal> animais = [cachorro, gato];

  // animais.forEach((animal) {
  //   if (animal is Cachorro) {
  //     print('Temos um cachorro!');
  //   } else if (animal is Gato) {
  //     print('Temos um gato!');
  //   } else {
  //     print('Desconheco!');
  //   }
  // });

  // cachorro.comunicar(); // au au
  // gato.comunicar(); // miauu
  // hamster.comunicar(); // nao sobrescreve metodo da classe pai, deve ser 'som!'

  // print(cachorro); // sobrescrita do toString()

  // keyword super testes
  // gato.dormir();

  // Animal a = Animal(); // nao permite mais instanciar pois a classe é abstrata

  cachorro.morrer();
  gato.morrer();
  hamster.morrer();
}
