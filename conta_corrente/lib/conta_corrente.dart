import 'cliente.dart';

class ContaCorrente {
  Cliente titular;
  int agencia;
  int conta;
  double saldo;

  void saque(double valor_saque){

    if (this.saldo - valor_saque < -100) {
      print("Saldo insuficiente para transação");
    } else {
      this.saldo -= valor_saque;
      print("O valor do saldo é: ${this.saldo}");
    }
  }

  void deposito(double valor_deposito) {
    this.saldo += valor_deposito;
    print("Deposito efetuado com sucesso!");
    print("Saldo Atual: ${this.saldo}");
  }
  

  void ver_extrato(){
    print("Titular: ${this.titular.nome}");
    print("Cpf: ${this.titular.cpf}");
    print("Profissão: ${this.titular.profissao}");
    print("Agencia: ${this.agencia}");
    print("Conta: ${this.conta}");
    print("Saldo: ${this.saldo}");
  }

  void transferencia(double valor, ContaCorrente conta_destino){
    if (this.saldo >= valor){
      this.saldo -= valor;
      conta_destino.deposito(valor);
      print("Transferencia executada com sucesso");
    }else{
      print("Saldo insuficiente para realizar transferencia");    
      
      }
  }

  }
