# Dart Basics

# Fundamentals

```dart
// dart:core is automatically imported
// import 'dart:core';

main() {
  String firstName = "Tanuv";
  var age = 19;

  print(firstName);
  print(age);
}
```

Dart supports both type inference and type defined.

# Taking input from user

```dart
import 'dart:io';

main() {
  stdout.writeln("What is your name?");
  var name = stdin.readLineSync();

  print("My name is $name");
}
```

# Comments

```dart
// In-line comment

/*
Block comment
multiple lines of comments
*/

/// Documentation
```

# Data types

**Strongly Typed Language:** The type of variable is known at compile time. For example: C++, Java.

**Dynamic Typed Language:** The type of variable is known at run time. For example: Python, JavaScript.

```dart
main() {
  /*
    int
    double
    String
    bool
    dynamic
  */

  int amount1 = 100;
  var amount2 = 200;

  print('Amount1: $amount1 | Amount2: $amount2 \n');

  double dAmount1 = 100.11;
  var dAmount2 = 200.2;

  print('dAmount1: $dAmount1 | dAmount2: $dAmount2 \n');

  String firstName = "Tanuv";
  var secondName = "Nair";

  print("My name is $firstName $secondName \n");

  bool isItTrue1 = true;
  bool isItTrue2 = false;

  print("isItTrue1: $isItTrue1 | isItTrue2: $isItTrue2 \n");

  dynamic weakVariable = 100;
  print("WeakVariable 1: $weakVariable \n");

  weakVariable = "Dart Programminng";
  print("WeakVariable 2: $weakVariable \n");
}

weakVariable = null;
print(weakVariable);
```

# String

```dart
main() {
  var s1 = 'You can use single quotes for string literals.';
  var s2 = "You can use double quotes too!";
  var s3 = 'It\'s easy to escape the string delimiter.';
  var s4 = "It's even easier to use the other delimiter.";

  print(s1);
  print(s2);
  print(s3);
  print(s4);
  print('');

  // RAW String
  var s = r'In a raw string, not even \n gets special treatment.';
  print(s);
}
```

# String Interpolation

```dart
main() {
  var age = 25;
  var str = "My age is $age";

  print(str);
}
```

# Multi-line Strings

```dart
main() {
  var s1 = '''
  You can create
  multi-line strings like thie one.
  ''';

  var s2 = """
  This is also
  a multi-line string.
  """;

  print(s1);

  print(s2);
}
```

# Type Conversion

```dart
main() {
  // String -> int
  var one = int.parse('1');
  // Returns error if one != 1
  assert(one == 1);

  // String -> double
  var onePointone = double.parse('1.1');
  assert(onePointone == 1.1);

  // int -> String
  String oneAsString = 1.toString();
  assert(oneAsString == '1');

  // double -> String
  String piAsString = 3.14159.toStringAsFixed(2);
  assert(piAsString == '3.14');
}
```

# Constants

```dart
main() {
  const aConstNum = 0; // int constant
  const aConstBool = true; // bool constant
  const aConstString = "A constant string";

  print(aConstNum);
  print(aConstBool);
  print(aConstString);

  print(aConstNum.runtimeType);
  print(aConstBool.runtimeType);
  print(aConstString.runtimeType);
}
```

# Null

```dart
main() {
  var num;
  var myNull = null;

  print(num);
  print(myNull);
}
```

# Operators

```dart
import 'dart:io';

main() {
  print("Enter two numbers");
  var num1String = stdin.readLineSync();
  var num2String = stdin.readLineSync();

  double num1 = double.parse(num1String!);
  double num2 = double.parse(num2String!);

  double add, subtract, multiply, divide;
  add = num1 + num2;
  subtract = num1 - num2;
  multiply = num1 * num2;
  divide = num1 / num2;

  print("$add $subtract $multiply $divide");

  // relational ==, !=, >=, <=
  if (num1 % 2 == 0) {
    print("Divisible by 2");
  }

  // unary operator
  ++num1;
  num1++;
  num1 += 1;
  num1 -= 1;
  print(num1);

  // logical && and logical ||
  if (num1 > 9 && num1 < 100) {
    print("$num1 is a 2 digit number");
  }

  // != Not equal
  if (num1 != 100) {
    print("$num1 is not equal to 100");
  }
}
```