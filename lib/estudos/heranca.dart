abstract class Animal {
  String _nome;
  int _idade;

  Animal(this._nome, this._idade);

  int get idade => _idade;

  set idade(int value) {
    _idade = value;
  }

  String get nome => _nome;

  set nome(String value) {
    _nome = value;
  }

  void dormir() {
    print('dormindo!');
  }

  void comer() {
    print('comendo!');
  }

  void comunicar() {
    print('som!');
  }

  // criar metodo abstrado
  void morrer();
}

class Gato extends Animal {
  Gato(super.nome, super.idade);

  @override
  void comunicar() {
    print('miauu');
  }

  @override
  void dormir() {
    // chamando o metodo da super classe dentro do metodo da classe
    super.dormir();
    print('como um gato');
  }

  @override
  void morrer() {
    print('gato morrido');
  }
}

class Cachorro extends Animal {
  Cachorro(super.nome, super.idade);

  @override
  void comunicar() {
    print('au au');
  }

  @override
  String toString() {
    return 'Cachorro $nome. Idade: $idade';
  }

  @override
  void morrer() {
    print('cachorro morrido');
  }
}

class Hamster extends Animal {
  Hamster(super.nome, super.idade);

  @override
  void morrer() {
    print('hamster morrido');
  }
}

