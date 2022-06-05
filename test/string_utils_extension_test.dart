import 'package:flutter_test/flutter_test.dart';
import 'package:string_utils_extension/src/string_utils_extension.dart';

void main() {
  const String textCapitalized = "The my text";
  const String textCapitalizedAll = "The My Text";
  const String textLowerCase = "the my text";
  const String textPascalCase = "TheMyText";
  const String textCamelCase = "theMyText";
  const String textSnakeCase = "the_my_text";
  const String textSnakePascal = "The_My_Text";
  const String textSnakeCamel = "the_My_Text";
  const String textPascalCaseTOSnakeRevert = "The My Text";
  const String textCamelCaseTOSnakeRevert = "the My Text";
  const String textSnakeCaseTOSnakeRevert = "the my text";

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
      test("SnakeCase", () {
        expect(textSnakeCase.toPascalCase(), textPascalCase);
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
      test("SnakeCase", () {
        expect(textSnakeCase.toCamelCase(), textCamelCase);
      });
    });
    group('toSnakeCase() ->', () {
      test("lowerCase", () {
        expect(textLowerCase.toSnakeCase(), textSnakeCase);
      });
      test("all Capitalized", () {
        expect(textCapitalizedAll.toSnakeCase(), textSnakeCase);
      });
      test("PascalCase", () {
        expect(textPascalCase.toSnakeCase(), textSnakeCase);
      });
      test("CamelCase", () {
        expect(textCamelCase.toSnakeCase(), textSnakeCase);
      });
      test("SnakeCase", () {
        expect(textSnakeCase.toSnakeCase(), textSnakeCase);
      });
    });
    group('snake() ->', () {
      test("Lowercase", () {
        expect(textLowerCase.snake(), textSnakeCase);
      });
      test("all Capitalized", () {
        expect(textCapitalizedAll.snake(), textSnakePascal);
      });
      test("PascalCase", () {
        expect(textPascalCase.snake(), textSnakePascal);
      });
      test("CamelCase", () {
        expect(textCamelCase.snake(), textSnakeCamel);
      });
      test("SnakeCase", () {
        expect(textSnakeCase.snake(), textSnakeCase);
      });
    });
    group('snakeRevert() ->', () {
      test("LowerCase", () {
        var result = textLowerCase.snakeRevert();
        expect(result, textLowerCase);
      });
      test("all Capitalized", () {
        var result = textCapitalizedAll.snakeRevert();
        expect(result, textCapitalizedAll);
      });
      test("PascalCase", () {
        var result = textPascalCase.snakeRevert();
        expect(result, textPascalCaseTOSnakeRevert);
      });
      test("CamelCase", () {
        var result = textCamelCase.snakeRevert();
        expect(result, textCamelCaseTOSnakeRevert);
      });
      test("SnakeCase", () {
        var result = textSnakeCase.snakeRevert();
        expect(result, textSnakeCaseTOSnakeRevert);
      });
    });
  });
}
