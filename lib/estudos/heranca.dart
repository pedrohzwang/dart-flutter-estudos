class Animal {
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
}

class Gato extends Animal {
  Gato(super.nome, super.idade);

  @override
  void comunicar() {
    print('miauu');
  }
}

class Cachorro extends Animal {
  Cachorro(super.nome, super.idade);

  @override
  void comunicar() {
    print('au au');
  }
}
