import 'cliente.dart';

class ContaCorrente {
  Cliente titular;
  int _agencia;
  int conta;
  double _saldo;
  double cheque_especial = -100;
  static int total_contascorrentes = 0;

  ContaCorrente(int nova_agencia, this.conta){
    if(nova_agencia > 0) _agencia = nova_agencia;
    total_contascorrentes++;
  }

  get agencia => _agencia;


  get saldo => _saldo;

  set novo_saldo(double valor) => {_saldo = valor};
  
  void saque(double valor_saque){

    if (this._saldo - valor_saque < -100) {
      print("_saldo insuficiente para transação");
    } else {
      this._saldo -= valor_saque;
      print("O valor do _saldo é: ${this._saldo}");
    }
  }

  void deposito(double valor_deposito) {
    this._saldo += valor_deposito;
    print("Deposito efetuado com sucesso!");
    print("_saldo Atual: ${this._saldo}");
  }
  

  void ver_extrato(){
    print("Titular: ${this.titular.nome}");
    print("Cpf: ${this.titular.cpf}");
    print("Profissão: ${this.titular.profissao}");
    print("Agencia: ${this.agencia}");
    print("Conta: ${this.conta}");
    print("_saldo: ${this._saldo}");
  }

  void transferencia(double valor, ContaCorrente conta_destino){
    if (this._saldo >= valor){
      this._saldo -= valor;
      conta_destino.deposito(valor);
      print("Transferencia executada com sucesso");
    }else{
      print("_saldo insuficiente para realizar transferencia");    
      
      }
  }

  }
