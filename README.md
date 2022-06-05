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

This is a simple extension, adding functionalities the class String giving super powers, como Capitalize a word or a text, you too can convert words to ("camelCase", "PascalCase", "snack_case"), you can too, "to snack" the a text, but not convert em lowercase, para isso é "snack()" or use "revert()" para transform the word converteds to ("camelCase", "PascalCase", "snack_case") in a text again.

## Features

For "to snackize" the a text, e not convert all words in lowercase, for this use "snack()",
by default joim the words using the separator underscore "_", but you can to use anywere caracter.

parameters:

### [String? snackSeparator]: optional, and default is underscore "_"
### [String? snackRegex]: optional, and default is "[A-Z]", regex then find all character uppercase, but case the word

```dart

String snack([String? snackSeparator, String? snackRegex])

print("Any text can be Snackzed".snack());   // Any_text_can_be_Snackzed

print("Any text can be Snackzed".snack("."));   // Any.text.can.be.Snackzed

```

or use "revert()" para transform the word converteds to ("camelCase", "PascalCase", "snack_case") in a text again.
```dart

print("Any_text_can_be_Snackzed".revert()); // Any text can be Snackzed
```

Note that both snack() and revert() do not change the state of words to lowercase or uppercase.

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
  String snackCase = texto.toSnackCase();
  String capitalize = texto.toCapitalize();
  String pascalWithSnack = pascalCase.snack();

  print("The text              -> $texto");
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

```

## Additional information

Thank you for uses this extension.
