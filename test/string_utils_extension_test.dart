import 'package:flutter_test/flutter_test.dart';
import 'package:string_utils_extension/string_utils_extension.dart';

void main() {
  const String textCapitalized = "The my text";
  const String textCapitalizedAll = "The My Text";
  const String textLowerCase = "the my text";
  const String textPascalCase = "TheMyText";
  const String textCamelCase = "theMyText";
  const String textSnackCase = "the_my_text";
  const String textSnackPascal = "The_My_Text";
  const String textSnackCamel = "the_My_Text";
  const String textPascalCaseTOSnackRevert = "The My Text";
  const String textCamelCaseTOSnackRevert = "the My Text";
  const String textSnackCaseTOSnackRevert = "the my text";

  group('Extension:', () {
    group('toCapitalize([bool isAll = false]) ->', () {
      test("sem parametro informado", () {
        expect(textLowerCase.toCapitalize(), textCapitalized);
      });
      test("com parametro isAll = (true)", () {
        expect(textLowerCase.toCapitalize(true), textCapitalizedAll);
      });
      test("com parametro isAll = (false)", () {
        expect(textLowerCase.toCapitalize(false), textCapitalized);
      });
    });
    group('toPascalCase() ->', () {
      test("lowerCase", () {
        expect(textLowerCase.toPascalCase(), textPascalCase);
      });
      test("all Capitalized", () {
        expect(textCapitalizedAll.toPascalCase(), textPascalCase);
      });
      test("PascalCase", () {
        expect(textPascalCase.toPascalCase(), textPascalCase);
      });
      test("CamelCase", () {
        expect(textCamelCase.toPascalCase(), textPascalCase);
      });
      test("SnackCase", () {
        expect(textSnackCase.toPascalCase(), textPascalCase);
      });
    });
    group('toCamelCase() ->', () {
      test("lowerCase", () {
        expect(textLowerCase.toCamelCase(), textCamelCase);
      });
      test("all Capitalized", () {
        expect(textCapitalizedAll.toCamelCase(), textCamelCase);
      });
      test("PascalCase", () {
        expect(textPascalCase.toCamelCase(), textCamelCase);
      });
      test("CamelCase", () {
        expect(textCamelCase.toCamelCase(), textCamelCase);
      });
      test("SnackCase", () {
        expect(textSnackCase.toCamelCase(), textCamelCase);
      });
    });
    group('toSnackCase() ->', () {
      test("lowerCase", () {
        expect(textLowerCase.toSnackCase(), textSnackCase);
      });
      test("all Capitalized", () {
        expect(textCapitalizedAll.toSnackCase(), textSnackCase);
      });
      test("PascalCase", () {
        expect(textPascalCase.toSnackCase(), textSnackCase);
      });
      test("CamelCase", () {
        expect(textCamelCase.toSnackCase(), textSnackCase);
      });
      test("SnackCase", () {
        expect(textSnackCase.toSnackCase(), textSnackCase);
      });
    });
    group('snack() ->', () {
      test("Lowercase", () {
        expect(textLowerCase.snack(), textSnackCase);
      });
      test("all Capitalized", () {
        expect(textCapitalizedAll.snack(), textSnackPascal);
      });
      test("PascalCase", () {
        expect(textPascalCase.snack(), textSnackPascal);
      });
      test("CamelCase", () {
        expect(textCamelCase.snack(), textSnackCamel);
      });
      test("SnackCase", () {
        expect(textSnackCase.snack(), textSnackCase);
      });
    });
    group('snackRevert() ->', () {
      test("LowerCase", () {
        var result = textLowerCase.snackRevert();
        expect(result, textLowerCase);
      });
      test("all Capitalized", () {
        var result = textCapitalizedAll.snackRevert();
        expect(result, textCapitalizedAll);
      });
      test("PascalCase", () {
        var result = textPascalCase.snackRevert();
        expect(result, textPascalCaseTOSnackRevert);
      });
      test("CamelCase", () {
        var result = textCamelCase.snackRevert();
        expect(result, textCamelCaseTOSnackRevert);
      });
      test("SnackCase", () {
        var result = textSnackCase.snackRevert();
        expect(result, textSnackCaseTOSnackRevert);
      });
    });
  });
}
