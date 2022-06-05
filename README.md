<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

This is a simple extension, adding functionalities the class String giving super powers, como Capitalize a word or a text, you too can convert words to ("camelCase", "PascalCase", "snake_case"), you can too, "to snake" the a text, but not convert em lowercase, para isso é "snake()" or use "revert()" para transform the word converteds to ("camelCase", "PascalCase", "snake_case") in a text again.

## Features

For "to snakeize" the a text, e not convert all words in lowercase, for this use "snake()",
by default joim the words using the separator underscore "_", but you can to use anywere caracter.

parameters:

### [String? snakeSeparator]: optional, and default is underscore "_"
### [String? snakeRegex]: optional, and default is "[A-Z]", regex then find all character uppercase, but case the word

```dart

String snake([String? snakeSeparator, String? snakeRegex])

print("Any text can be Snakezed".snake());   // Any_text_can_be_Snakezed

print("Any text can be Snakezed".snake("."));   // Any.text.can.be.Snakezed

```

or use "revert()" para transform the word converteds to ("camelCase", "PascalCase", "snake_case") in a text again.
```dart

print("Any_text_can_be_Snakezed".revert()); // Any text can be Snakezed
```

Note that both snake() and revert() do not change the state of words to lowercase or uppercase.

TODO: List what your package can do. Maybe include images, gifs, or videos.

## Getting started

Not has prerequisites to user extension, your dependecy is oure dart

## Usage

Short and useful examples for package into `/example` folder.

```dart
import 'package:string_utils_extension/string_utils_extension.dart';

void main() {
  String texto = "to insert Type Residue";
  String pascalCase = texto.toPascalCase();
  String camelCase = texto.toCamelCase();
  String snakeCase = texto.toSnakeCase();
  String capitalize = texto.toCapitalize();
  String pascalWithSnake = pascalCase.snake();

  print("The text              -> $texto");
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

```

## Additional information

Thank you for uses this extension.
