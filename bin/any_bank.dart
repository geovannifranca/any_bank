import 'package:any_bank/conta.dart';

void main() {
  Conta contaMatheus = Conta("Matheus", 1000);
  Conta contaRoberta = Conta("Roberta", 2000);
  ContaCorrente contaCris = ContaCorrente("Cris", 4500);
  ContaPoupanca contaLucca = ContaPoupanca("Lucca", 500);

  List<Conta> contas = [contaRoberta, contaMatheus, contaCris, contaLucca];

  for (Conta conta in contas) {
    conta.imprimirSaldo();
  }

  contaRoberta.receber(3000.00);
  contaMatheus.receber(400);
  contaMatheus.enviar(350);

  contaCris.imprimirSaldo();
  contaCris.receber(100);

  contaLucca.receber(250);
  contaLucca.enviar(100);
}
