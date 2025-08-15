class Conta {
  String titular;
  double _saldo;

  Conta(this.titular, this._saldo);

  void enviar(double valor) {
    if (_saldo >= valor) {
      _saldo -= valor;
      imprimirSaldo();
    }
  }

  void receber(double valor) {
    _saldo += valor;
    imprimirSaldo();
  }

  void imprimirSaldo() {
    print("""
    Titualar: $titular
    Saldo: $_saldo
    """);
  }
}

class ContaCorrente extends Conta {
  ContaCorrente(super.titular, super.saldo);
}

class ContaPoupanca extends Conta {
  ContaPoupanca(super.titular, super.saldo);
}
