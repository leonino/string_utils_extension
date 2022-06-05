import 'package:string_utils_extension/string_utils_extension.dart';

void main() {
  String texto = "to insert Type Residue";
  String pascalCase = texto.toPascalCase();
  String camelCase = texto.toCamelCase();
  String snakeCase = texto.toSnakeCase();
  String capitalize = texto.toCapitalize();
  String pascalWithSnake = pascalCase.snake();

  print("Capitalize            -> $texto");
  print("Capitalize            -> $capitalize");
  print("PascalCase            -> $pascalCase");
  print("camelCase             -> $camelCase");
  print("snake_case            -> $snakeCase");
  print("PascaCase with snake  -> $pascalWithSnake");
  print("snakeRevert with ''   -> ${pascalWithSnake.snakeRevert()}");
  print("snake Revert with ' ' -> ${pascalWithSnake.snakeRevert(' ')}");
}

// Capitalize            -> to insert Type Residue
// Capitalize            -> To insert type residue
// PascalCase            -> ToInsertTypeResidue
// camelCase             -> toInsertTypeResidue
// snake_case            -> to_insert_type_residue
// PascaCase with snake  -> To_Insert_Type_Residue
// snakeRevert with ''   -> To Insert Type Residue
// snake Revert with ' ' -> To_ Insert_ Type_ Residue
