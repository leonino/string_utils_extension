import 'package:string_utils_extension/string_utils_extension.dart';

void main() {
  String texto = "to insert Type Residue";
  String pascalCase = texto.toPascalCase();
  String camelCase = texto.toCamelCase();
  String snackCase = texto.toSnackCase();
  String capitalize = texto.toCapitalize();
  String pascalWithSnack = pascalCase.snack();

  print("Capitalize            -> $texto");
  print("Capitalize            -> $capitalize");
  print("PascalCase            -> $pascalCase");
  print("camelCase             -> $camelCase");
  print("snack_case            -> $snackCase");
  print("PascaCase with snack  -> $pascalWithSnack");
  print("snackRevert with ''   -> ${pascalWithSnack.snackRevert()}");
  print("snack Revert with ' ' -> ${pascalWithSnack.snackRevert(' ')}");
}

// Capitalize            -> to insert Type Residue
// Capitalize            -> To insert type residue
// PascalCase            -> ToInsertTypeResidue
// camelCase             -> toInsertTypeResidue
// snack_case            -> to_insert_type_residue
// PascaCase with snack  -> To_Insert_Type_Residue
// snackRevert with ''   -> To Insert Type Residue
// snack Revert with ' ' -> To_ Insert_ Type_ Residue
