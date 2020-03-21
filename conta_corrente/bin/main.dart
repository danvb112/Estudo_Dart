import '../lib/cliente.dart';
import '../lib/conta_corrente.dart';

void main() {

  var daniel = new Cliente()
  ..nome = "Daniel"
  ..cpf = "123456"
  ..profissao = "Quarentenado";
  
  var conta_Daniel = new ContaCorrente()
  ..titular = daniel
  ..agencia = 123
  ..conta = 1;

  print(conta_Daniel.saldo);
  conta_Daniel.novo_saldo = 100;
  print(conta_Daniel.saldo);

  

}

