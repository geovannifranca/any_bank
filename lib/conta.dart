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
  double cheque = 300;
  ContaCorrente(super.titular, super.saldo);
  @override
  void enviar(double valor) {
    if(_saldo + cheque >= valor){
      _saldo -= valor;
      imprimirSaldo();
    }else{
      print("Sem saldo");
      imprimirSaldo();
    }
    super.enviar(valor);
  }
}

class ContaPoupanca extends Conta {
  double redimento = 0.05;
  ContaPoupanca(super.titular, super.saldo);

  void calcularRendimento() {
    _saldo += redimento * _saldo ;
    print("""
    Titualar: $titular
    Saldo: $_saldo
    """);
  }

  void imprimirSaldoPoupanca() {}

}
