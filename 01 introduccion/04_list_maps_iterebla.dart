void main() {
  final numbers = [1, 2, 3, 4, 5, 6, 5, 6, 3, 12, 4];
  print('Lista original ${numbers.toSet().toList()}');
  print('Length ${numbers.length}');
  print('Index 0: ${numbers[0]}');
  print('First: ${numbers.first}');
  print('Reversed: ${numbers.reversed}');

  final reversedNumbers = numbers.reversed;
  print('Iterable: $reversedNumbers');
  print('Lista: ${reversedNumbers.toList()}');
  print('Set: ${reversedNumbers.toSet()}');

  final numbersGreaterThan5 = numbers.where((num) {
    return num > 5; //true
  });
  print('>5 iterable: $numbersGreaterThan5 ');
  print('>5 set: ${numbersGreaterThan5.toSet()}');
}
