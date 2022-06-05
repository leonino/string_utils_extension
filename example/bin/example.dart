import 'package:string_utils_extension/string_utils_extension.dart';

void main() {
  String texto = "to insert Type Residue";
  String pascalCase = texto.toPascalCase();
  String camelCase = texto.toCamelCase();
  String snackCase = texto.toSnackCase();
  String capitalize = texto.toCapitalize();
  String pascalWithSnack = pascalCase.snack();

  print("Capitalize            -> $capitalize");
  print("PascalCase            -> $pascalCase");
  print("camelCase             -> $camelCase");
  print("snack_case            -> $snackCase");
  print("PascaCase with snack  -> $pascalWithSnack");
  print("snackRevert with ''   -> ${pascalWithSnack.snackRevert()}");
  print("snack Revert with ' ' -> ${pascalWithSnack.snackRevert(' ')}");
}
