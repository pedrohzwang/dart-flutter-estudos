import 'package:meu_primeiro_app_flutter/estudos/interfaces.dart';

void main() {
  PagamentoService service1 = PagamentoService1();
  PagamentoService service2 = PagamentoService2();

  service1.pagar();
  service2.pagar();

  Bebivel agua = Agua();
  Bebivel suco = Suco();
  // suco.sabor = 'sabor'; nao pode se obter o sabor pois o suco foi instanciado numa variavel tipo Bebivel

  agua.beber();
  suco.beber();
}