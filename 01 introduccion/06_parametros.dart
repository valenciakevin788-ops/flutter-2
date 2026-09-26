void main() {
  print(greatEveryone());
  print('Suma: ${addTwoNumbers(10, 30)}');
  print(greetPerson(name: 'Kevin', massege: 'Hi,'));
}

String greatEveryone() => 'Hello everyone';

int addTwoNumbers(int a, int b) => a + b;
int addTwoNumbersOpcional(int a, [int b = 0]) {
  //b ??= 0;
  return a + b;
}

String greetPerson({required String name, String massege = 'Hola,'}) {
  return '$massege Kevin';
}
