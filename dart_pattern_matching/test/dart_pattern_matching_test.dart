import 'package:dart_pattern_matching/dart_pattern_matching.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    expect(createPerson(), Person("Jan", 8));
  });
}
