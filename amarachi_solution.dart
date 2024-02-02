import 'dart:math';

import 'package:exam_2/exam_2.dart' as exam_2;

class Person {
  String name;
  int age;
  Person(this.name, this.age) {
    name;
    age;
  }

  void displayInfo() {
    print("Name: $name, age: $age");
  }
}

class Rectangle {
  double length;
  double width;
  Rectangle(this.length, this.width) {
    length;
    width;
  }

  double displayArea() {
    double area = length * width;
    print("Area: $area");
    return area;
  }
}

class Circle {
  double radius;

  Circle(this.radius) {
    radius;
  }

  double displayCircumference() {
    double circumference = 2 * pi * radius;
    print("Circumference: $circumference");
    return circumference;
  }
}

class BankAccount {
  double amount;
  BankAccount(this.amount) {
    amount;
  }
  void checkBalance() {
    print("Account Balance: $amount");
  }

  void makeDeposit(double depositamount) {
    print("You are about to deposit $depositamount");
    amount += depositamount;
    checkBalance();
  }

  void makeWithdraw(double withdrawamount) {
    print("You are about to withdraw $withdrawamount");
    amount -= withdrawamount;
    checkBalance();
  }
}

class Student {
  String name;
  int age;
  double grade;
  Student(this.name, this.age, this.grade) {
    name;
    age;
    grade;
  }
  void remarks() {
    switch (grade) {
      case < 40:
        print("failed");
        break;
      case >= 40:
        print("passed");
        break;
      default:
        print("invalid entry");
        break;
    }
  }
}

class Calculator {
  double? a, b;
  double? answer;

  void add(a, b) {
    answer = a + b;
    print("Add: $answer");
  }

  void substract(a, b) {
    answer = a - b;
    print("Substract: $answer");
  }

  void divide(a, b) {
    answer = a / b;
    print("Divide: $answer");
  }

  void multipy(a, b) {
    answer = a * b;
    print("Multiply: $answer");
  }
}

class Car {
  int fuel;
  Car(this.fuel) {
    fuel;
  }
  void start() {
    print("Starting car .......");
  }

  void stop() {
    print("Stopping car ...........");
  }

  void checkFuel() {
    print("Fuel level: $fuel");
  }
}

class Employee {
  String name;
  double salary;
  double? bonus;
  Employee(this.name, this.salary) {
    name;
    salary;
  }
  void giveBonus(bonus) {
    print("Salary before bonus: $salary");
    print("Adding bonus: $bonus");
    salary += bonus;
    print("Salary: $salary");
  }
}

class Triangle {
  double base;
  double height;
  Triangle(this.base, this.height) {
    base;
    height;
  }

  double displayArea() {
    double area = 0.5 * base * height;
    print("Area: $area");
    return area;
  }
}

void main() {
// question 1
  int sum(int a, int b) {
    int total = a + b;
    print("the sum of $a and $b is: $total");
    return total;
  }

  sum(5, 4);
// question 2
  int factorial(int a) {
    int total = 0;

    if (a == 1) {
      total = a;
    } else {
      total = a * factorial(a - 1);
    }
    return total;
  }

  int factor = factorial(3);
  print("the factorial is: $factor");

  //question 3

  bool isPrime(int a) {
    bool prime = true;
    if (a < 2) {
      prime = false;
      return prime;
    }
    for (int i = 2; i <= a / 2; i++) {
      if (a % i == 0) {
        prime = false;
      }
    }
    return prime;
  }

  print(isPrime(11));

  //question 4
  double celsiustofahrenheit(double celsius) {
    double fahrenheit = ((celsius * (9 / 5)) + 32);
    print("$celsius is equal to $fahrenheit fahrenheit");
    return fahrenheit;
  }

  celsiustofahrenheit(10);

  //question 5
  String reverseword(String word) {
    List<String> newword = word.split('');
    String nword = "";
    for (var i = newword.length - 1; i >= 0; i--) {
      nword += newword[i];
    }

    return nword;
  }

  print(reverseword("amarachi"));

  // question 6
  Person person = Person("amarachi", 39);
  person.displayInfo();

  //question 7
  Rectangle rectangle = Rectangle(2, 4);
  rectangle.displayArea();

  //question 8
  Circle circle = Circle(5);
  circle.displayCircumference();

  //question 9
  BankAccount bankaccount = BankAccount(20);
  bankaccount.checkBalance();
  bankaccount.makeDeposit(1000);
  bankaccount.makeDeposit(1000);
  bankaccount.makeWithdraw(500);

  Student student = Student("amarachi", 39, 40);
  student.remarks();

  //question 10
  Calculator calculator = Calculator();
  calculator.add(5.0, 5.0);
  calculator.multipy(25.0, 5.0);
  calculator.divide(5.0, 5.0);
  calculator.substract(5.0, 5.0);

  //question 11
  Car car = Car(200);
  car.start();
  car.stop();
  car.checkFuel();

  //question 12
  int findMax(List<int> a) {
    int max = 0;
    for (int i = 0; i < a.length; i++) {
      if (a[i] > max) {
        max = a[i];
      }
    }
    print("The maximum in $a is: $max");
    return max;
  }

  findMax([1, 2, 3, 2, 0, 3, 0]);
  //question 13
  Employee employee = Employee("amarachi", 50000.0);
  employee.giveBonus(1000);

  //question 14
  Triangle triangle = Triangle(10, 4);
  triangle.displayArea();

  //question 15
  double squareroot(int a) {
    double sqrta = sqrt(a);
    print("The square root of $a is $sqrta");
    return sqrta;
  }

  squareroot(4);

  //question 16
  List<int> generateFibonacci(int n) {
    List<int> fibonacciList = [];

    if (n >= 1) {
      fibonacciList.add(0);
    }

    if (n >= 2) {
      fibonacciList.add(1);
    }

    for (int i = 2; i < n; i++) {
      int nextFibonacci = fibonacciList[i - 1] + fibonacciList[i - 2];
      fibonacciList.add(nextFibonacci);
    }

    print(fibonacciList.toString());
    return fibonacciList;
  }

  generateFibonacci(10);

  //question 17
  bool isLeap(int year) {
    bool leap = false;
    if (year % 4 != 0) {
      print("$year: Not a leap year");
      return leap;
    } else if (year % 100 != 0) {
      print("$year: It is a leap year");
      leap = true;
      return leap;
    } else if (year % 400 != 0) {
      print("$year: It is not a leap year");
      return leap;
    } else {
      leap = true;
      print("$year: It is a leap year");
      return leap;
    }
  }

  isLeap(2024);

  //question 18
  int refactorial(int a) {
    int total = 0;

    if (a == 1) {
      total = a;
    } else {
      total = a * refactorial(a - 1);
    }
    return total;
  }

  int f = refactorial(3);
  print("the factorial is: $f");

  //question 19
  List<int> findEven(List<int> a) {
    List<int> even = [];
    for (int i = 0; i < a.length; i++) {
      if (a[i] == 0) {
        continue;
      }
      if (a[i] % 2 == 0) {
        even.add(a[i]);
      }
    }
    print("The even numbers in $a is: $even");
    return even;
  }

  findEven([1, 2, 4, 2, 0, 3, 8]);
}
