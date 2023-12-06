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
