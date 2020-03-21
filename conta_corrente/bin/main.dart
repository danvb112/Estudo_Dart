
import '../lib/cliente.dart';
import '../lib/conta_corrente.dart';

void main() {

  var daniel = new Cliente()
  ..nome = "Daniel"
  ..cpf = "123456"
  ..profissao = "Quarentenado";
  
  var conta_Daniel = new ContaCorrente(123, 2)
  ..titular = daniel;


  print(ContaCorrente.total_contascorrentes);

  

}

