import 'package:dart_pattern_matching/dart_pattern_matching.dart';
import 'package:test/test.dart';

void main() {
  test('validate parsing no occupation', () {
    final name = "Jan";
    final age = 8;

    final person = createPerson(name, age);

    expect(person!, isNotNull);

    expect(person.name, name);
    expect(person.age, age);
    expect(person.occupation, isNull);
  });
  test('validate parsing with occupation', () {
    final name = "Jan";
    final age = 8;
    final occupation = 'Occupation';

    final person = createPerson(name, age, occupation);

    expect(person!, isNotNull);

    expect(person.name, name);
    expect(person.age, age);
    expect(person.occupation, occupation);
  });
}
