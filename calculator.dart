import 'dart:io';

void main() {
  while (true) {
    print("Simple Calculator");
    print("Choose an operation : ");
    print("1. Addition(+)");
    print("2. Subtraction(-)");
    print("3. Multiplacation(*)");
    print("4. Division(/)");
    print("5. Exit");

    String? operation = stdin.readLineSync();

    int? operationNumber;
    try {
      if (operation != null && operation.isNotEmpty) {
        operationNumber = int.parse(operation);
      }
    } catch (e) {
      print("Invalid input. Please enter a number.");
      continue;
    }

    if (operationNumber == 5) {
      print("Exiting the calculator...");
      exit(0);
    }

    if (operationNumber == null || operationNumber > 5 || operationNumber < 1) {
      print('Invalid operation. Please select a valid option.');
      continue;
    }

    double num1 = 0.0, num2 = 0.0;
    print("Enter the first Number : ");
    String? input1 = stdin.readLineSync();
    if (input1 != null && input1.isNotEmpty) {
      num1 = double.parse(input1);
    }

    print("Enter the second Number: ");
    String? input2 = stdin.readLineSync();
    if (input2 != null && input2.isNotEmpty) {
      num2 = double.parse(input2);
    }

    double result;

    switch (operation) {
      case '1':
        result = num1 + num2;
        print('Result $num1 + $num2 : $result');
        break;
      case '2':
        result = num1 - num2;
        print('Result $num1 - $num2 : $result');
        break;
      case '3':
        result = num1 * num2;
        print('Result $num1 * $num2 : $result');
        break;
      case '4':
        if (num2 == 0) {
          print("Error: Division by zero is not allowed.");
        } else {
          result = num1 / num2;
          print('Result $num1 / $num2 : $result');
          break;
        }
    }

    print(""); // Line break for better readability
  }
}
