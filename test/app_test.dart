import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Simple Tests', () {

    test('math test', () {
      expect(5 * 2, 10);
    });

    test('string test', () {
      String app = 'Flutter';
      expect(app.contains('Flut'), true);
    });

    test('list test', () {
      List<int> numbers = [10, 20, 30];
      expect(numbers.length, 3);
      expect(numbers[1], 20);
    });

  });
}