// Task 2: Async Calculator App
// Name: Mikeale Alemu


import 'dart:async';

class Calculator {
  String name;

  Calculator(this.name);

  double add(double a, double b) {
    return a + b;
  }

  double subtract(double a, double b) {
    return a - b;
  }

  double multiply(double a, double b) {
    return a * b;
  }

  double divide(double a, double b) {
    if (b == 0) {
      throw ArgumentError("Cannot divide by zero");
    }

    return a / b;
  }

  // async computation
  Future<double> computeAsync(double a, double b, String operation) async {
    double result = 0;

    switch (operation) {
      case "add":
        result = add(a, b);
        break;

      case "subtract":
        result = subtract(a, b);
        break;

      case "multiply":
        result = multiply(a, b);
        break;

      case "divide":
        result = divide(a, b);
        break;

      default:
        throw ArgumentError("Unknown operation");
    }

    // simulate delay
    await Future.delayed(Duration(milliseconds: 1500));

    return result;
  }

  Future<void> displayResult(double a, double b, String operation) async {
    try {
      double result = await computeAsync(a, b, operation);
      print("$operation($a, $b) = $result");
    } catch (e) {
      print("Error: $e");
    }
  }
}

Future<void> main() async {
  Calculator calc = Calculator("MyCalculator");

  print("--- ${calc.name} ---");

  await calc.displayResult(10, 4, "add");
  await calc.displayResult(10, 4, "subtract");
  await calc.displayResult(10, 4, "multiply");
  await calc.displayResult(10, 4, "divide");
  await calc.displayResult(15, 3, "divide");

  // error example
  await calc.displayResult(10, 0, "divide");

  print("All calculations complete.");
}