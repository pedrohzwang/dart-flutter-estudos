abstract class PagamentoService {
  void pagar();
}

// interfaces no dart sao classes abstratas

class PagamentoService1 implements PagamentoService{
  @override
  void pagar() {
    print('pagando!');
  }
}

class PagamentoService2 implements PagamentoService{
  @override
  void pagar() {
    print('pagando com o service 2!');
  }
}

class Agua implements Bebivel {
  @override
  void beber() {
    print('bebendo agua!');
  }
}

class Suco implements Bebivel {
  String? sabor;

  @override
  void beber() {
    print('bebendo suco!');
  }
}

abstract class Bebivel {
  void beber();
}