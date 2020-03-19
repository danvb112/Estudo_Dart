void main() {

  var conta = new ContaCorrente();

  conta.titular = "Daniel";
  conta.agencia = 123;
  conta.conta = 1234;
  conta.saldo = 150.0;

  print("O nome do titular é: ${conta.titular}");
  print("O número da Agencia é: ${conta.agencia}");
  print("O número da conta é: ${conta.conta}");
  print("O saldo é: ${conta.saldo}");

  print(conta);
}

class ContaCorrente {
  String titular;
  int agencia;
  int conta;
  double saldo;

  
}