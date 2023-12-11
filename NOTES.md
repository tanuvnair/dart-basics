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

# Null Aware Operators

```dart
// Null Aware Operator
// (?.), (??), (??=)

class Num {
  int num = 10;
}

main() {
  var n;

  // Checks if n is a valid object or not.
  var number_no_default_value = n?.num;
  print(number_no_default_value);

  // Checks if n is a valid object and then prints a deafult output (10) if it is null.
  var number_with_default_value = n?.num ?? 10;
  print(number_with_default_value);

  // Checks if number is a valid object, if it isn't then it is assigned the value of 100.
  var number;
  number ??= 100;

  print(number);
}
```

# Ternary Operators

```dart
// Ternary Operator

void main() {
  int x = 113;
  var result = x % 2 == 0 ? 'Even' : 'Odd';

  print(result);
}
```

# Type Test

```dart
// Type test

void main() {
  var x = 100.23;

  if (x is int) {
    print("Integer");
  } else if (x is double) {
    print("Double");
  } else {
    print("IDKK.");
  }
}
```

# Conditional Statements

```dart
// Conditional Statements

void main() {
  int number = 91;
  if (number % 2 == 0) {
    print("Divisible by 2");
  } else if (number % 3 == 0) {
    print("Divisible by 3");
  } else {
    print("Neither divisible by 2 nor 3.");
  }

  int choice = 2;
  switch (choice) {
    case 0:
      print("Choice 0");
      break;
    case 1:
      print("Choice 1");
      break;
    case 2:
      print("Choice 2");
      break;
    default:
      print("Invalid Choice");
      break;
  }
}
```

# Loop

```dart
// Loops

void printNum(num) {
  print(num);
}

void main() {
  // Standard for loop
  for (var i = 1; i <= 10; ++i) {
    print(i);
  }

  print("");

  // for-in loop
  var numbers = [1, 2, 3];
  for (var n in numbers) {
    print(n);
  }

  print("");

  for (var i = 0; i < numbers.length; ++i) {
    print(numbers[i]);
  }

  print("");

  // forEach loop
  numbers.forEach((n) => print(n));

  print("");

  // forEach loop without arrow function
  numbers.forEach(printNum);

  print("");

  // while loop
  int num = 5;

  while (num > 0) {
    print(num);
    num--;
  }

  print("");

  // do-while loop
  num = 5;
  do {
    print(num);
    num--;
  } while (num > 0);
}
```

# Break And Continue

```dart
// break and continue

void main() {
  for (var i = 0; i < 10; i++) {
    if (i % 2 != 0) continue;
    if (i > 8) break;
    print(i);
  }
}
```

# Collections- List, Set, Map

## List

```dart
// Collection- List (also known as array in other languages).

void main() {
  List myList = ["Tanuv", "Vunat", 21, 102];

  // Can also use var, complier will make it into a list by type inference.
  var age = [18, 19, 21];

  // Statically typed list
  // If you use const keyword, then the list becomes immutable.
  List<String> names = const ["Tanuv", "Nair", "Jack"];

  // This does not make a copy, it is pointing to the same list of item.
  var myList2 = myList;

  // To actually copy we can use the spread operator '...'.
  var myListCopy = [...myList];

  myList[0] = "Rian";

  // Prints out entire list.
  for (var item in myList2) {
    print(item);
  }

  for (var item in myListCopy) {
    print(item);
  }
}
```

## Set

```dart
// Collection- Set (Unordered collection of unique items).

void main() {
  var halogens = {"Fluorine", "Chlorine"};

  // To define empty set, you have to set the datatype before the curly braces or after Set.
  var stringSet = <String>{};
  Set<String> emptySet = {};

  for (var halogen in halogens) {
    print(halogen);
  }
}
```

## Map

```dart
// Collection- Map (also called dictionary in other languages such as python)

void main() {
  var myMap = {36: "Tanuv Nair", "College": "Somaiya"};

  print(myMap[36]);
  print(myMap["College"]);

  // To create an empty map
  var gifts = Map();

  // Adding to empty map
  gifts["First"] = "Mango";
}
```

# Function

Each function is an object of class ‘Function’. A nameless function is called anonymous function in Dart.

```dart
// Function

// dynamic type returns any type.
dynamic square(var num) {
  return num * num;
}

// Arrow function =>
void showOutput(var message) => print(message);

// Positional parameter
dynamic sum(var num1, var num2) => num1 + num2;

// Named parameter
dynamic difference({var num1, var num2}) => num1 - num2;

// Positional and Named parameter mixed
dynamic multiply(var num1, {var num2 = 1}) => num1 * num2;

dynamic name(var firstName, [var lastName = ""]) =>
    print("Your name is $firstName $lastName");

void main() {
  showOutput(square(2));

  var list = ["apples", "banana", "oranges"];

  // Anonymous function
  list.forEach((item) {
    print(item);
  });

  print(multiply(12));

  name("Tanuv");
}
```