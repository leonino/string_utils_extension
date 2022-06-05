/// ```[extension]``` é um recurso prático do ```Dart``` para criar
/// funcionalidades a uma classe, funciona como um prototype incluindo novos
/// resursos a uma classe já existente.
///
/// ```[StringUtilsExtension]``` basicamente inclui as seguintes funcionalidades para a
/// classe  ```[String]``` facilitando ainda mais a vida do desenvolvedor.
///
/// ```[ String toCapitalize([bool isAll = false]) ]```
///
/// ```[ String toPascalCase() ]```
///
/// ```[ String toCamelCase() ]```
///
/// ```[ String toSnackCase() ]```
///
/// ```[ String snack([String? separator, String? regex]) ]```
///
/// ```[ String snackRevert([String? snackSeparator, String? snackRevertOperator]) ]```
///
extension StringUtilsExtension on String {
  /// ```  "O meu texto".toCapitalize()  ```  ->  ```  "O meu texto"  ```
  /// converte uma palvra ou todas para a primeira letra MAIUSCULA e as
  /// demais letras minusculas
  /// [isAll = false] use o parametro opnional isAll para
  String toCapitalize([bool isAll = false]) {
    if ((this).isEmpty) return this;
    if (isAll) {
      return (this)
          .split(StringUtilsExtension.snackRevertOperator)
          .map((s) => s._capitalize())
          .join(snackRevertOperator);
    }
    return (this)._capitalize();
  }

  /// converte uma palvra para a primeira letra MAIUSCULA e as demais letras minusculas
  String _capitalize() {
    return this[0].toUpperCase() + (this).substring(1).toLowerCase();
  }

  /// ```  "O meu texto".toPascalCase()  ```  ->  ```  "OMeuTexto"  ``` converte
  /// todas as palavras do texto para a primeira letra maiúscula e as une em
  /// uma unica palavra.
  ///
  String toPascalCase() {
    return (this)
        .replaceAll(StringUtilsExtension.snackRevertOperator,
            StringUtilsExtension.snackSeparator)
        .snack()
        .split(StringUtilsExtension.snackSeparator)
        .map((s) => s.trim().toCapitalize())
        .join();
  }

  /// ```  "O meu texto".toCamelCase()  ```  ->   ```  "oMeuTexto"  ``` converte
  /// todas as palavras do texto para maiúsculas exceto a primeira palavra
  /// que inicia com uma letra minuscula e as une em uma única palavra.
  String toCamelCase() {
    var texto = (this).toPascalCase();
    return texto[0].toLowerCase() + texto.substring(1);
  }

  /// ```  "O meu texto".toSnackCase()  ```  ->  ```  "o_meu_texto"  ```
  /// converte todas as palavras do texto para a primeira letra minusculas
  /// e inclui um undescore "_" entre elas tornando uma única palavra.
  String toSnackCase() {
    return (this).toCamelCase().snack().toLowerCase();
  }

  /// ```  "O meu texto".snack()  ```  ->  ```  "O_meu_texto"  ``` apenas inclui um
  /// undescore "_" entre todas as palavras e as une em uma única. posui dois
  /// parametro que podem ser usados para modificar a sua maneira de agir.
  /// ```[ String? separator ]``` por padrão é o underscore "_" mais você pode
  /// informar qualquer outro ```[ String ]``` no seu lugar.
  /// ```[ String? regex ]``` por padrão é um String ``` "[A-Z]" ``` que
  /// representa todas as letras maiusculas mais você pode
  /// informar qualquer outro ```[ String ]``` no seu lugar, o mesmo deve ser
  /// um string um Regex que identifique uma tipo para quebra uma palvra ou
  /// texto empedaços menores.
  ///
  String snack([String? snackSeparator, String? snackRegex]) {
    snackSeparator ??= StringUtilsExtension.snackSeparator;
    snackRegex ??= StringUtilsExtension.snackRegex;
    if ((this).split(snackRevertOperator).length > 1) {
      return this[0] +
          (this).substring(1).replaceAll(snackRevertOperator, snackSeparator);
    }
    return this[0] +
        (this).substring(1).replaceAllMapped(
            RegExp(snackRegex),
            (Match m) =>
                "$snackSeparator${m.input.substring(m.start, m.start + 1)}");
  }

  /// ```  "O_meu_texto".snack  ```  ->  ```  "Omeutexto"  ``` apenas retira o
  /// undescore "_" entre todas as palavras e as une em uma única. posui dois
  /// parametro que podem ser usados para modificar a sua maneira de agir.
  /// ```[ [String? snackSeparator ]``` por padrão é o underscore "_" mais você pode
  /// informar qualquer outro ```[ String ]``` no lugar.
  /// ```[ String? snackRevertOperator ]``` por padrão é um espaço ``` " " ``` que
  /// separa as palavras em um texto. você pode
  /// informar qualquer outro ```[ String ]``` no seu lugar
  ///
  String snackRevert([String? snackSeparator, String? snackRevertOperator]) {
    snackSeparator ??= StringUtilsExtension.snackSeparator;
    snackRevertOperator ??= StringUtilsExtension.snackRevertOperator;
    if ((this).split(snackRevertOperator).length > 1) {
      return this;
    } else if ((this).split(snackSeparator).length > 1) {
      return (this).replaceAll(snackSeparator, snackRevertOperator);
    }
    return this[0] +
        (this).substring(1).replaceAllMapped(RegExp(snackRegex), (Match m) {
          var letra = m.input.substring(m.start, m.start + 1);
          var letraAnterior = m.input.substring(m.start - 1, m.start);
          if (letraAnterior != snackRevertOperator) {
            return "$snackRevertOperator$letra";
          }
          return letra;
        });
  }

  static const String snackRegex = "[A-Z]";
  static const String snackSeparator = "_";
  static const String snackRevertOperator = " ";
}
