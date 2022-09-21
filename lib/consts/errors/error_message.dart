///Classe que retorna a mensagem de erro evitando o famigerado bug das 0 casas
///=
class ErrorMessage implements Exception {
  final String? message;
  ErrorMessage({this.message});
}
