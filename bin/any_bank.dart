void main() {
  Conta contaMatheus = Conta(titular: "Matheus", saldo: 1000);
  print(contaMatheus.saldo);
  Conta contaRoberta = Conta(titular: "Roberta", saldo: 2000);
  print(contaRoberta.saldo);

  List<Conta> contas = [contaRoberta, contaMatheus];

  print(contas);
}

class Conta {
  String titular;
  double saldo;

  Conta({required this.titular, required this.saldo});
}
