void main() {
  Conta contaMatheus = Conta(titular: "Matheus", saldo: 1000);
  Conta contaRoberta = Conta(titular: "Roberta", saldo: 2000);

  List<Conta> contas = [contaRoberta, contaMatheus];

  for (Conta conta in contas) {
    print(conta.titular);
    print(conta.saldo);
  }

  contaRoberta.saldo = 5000;

  print('-------------------');
  print(contaRoberta.saldo);
}

class Conta {
  String titular;
  double saldo;

  Conta({required this.titular, required this.saldo});
}
