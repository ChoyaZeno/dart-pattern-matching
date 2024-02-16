import 'dart:convert';

class Person {
  Person(
    this.name,
    this.age, [
    this.occupation,
  ]);

  String name;
  int age;

  String? occupation;
}

// typedef PersonMap = Map<String, Object?>;

// extension on PersonMap {
//   Object? get name => this['name'];
//   Object? get age => this['age'];
//   Object? get occupation => this['occupation'];
// }

extension type PersonMap<T, Y>(Map<T, Y> _) implements Map<T, Y> {
  Y? get name => this['name'];
  Y? get age => this['age'];
  Y? get occupation => this['occupation'];
}

Person? createPerson(String name, int age, [String? occupation]) {
  // final person = jsonDecode('{ "name": "Jan", "age": 8 }');
  final person = jsonDecode(
    '{ "name": "$name", "age": $age ${(occupation != null ? ", \"occupation\": \"$occupation\"" : '')} }',
  );

  return switch (person) {
    PersonMap(:String name, :int age, :String? occupation) =>
      Person(name, age, occupation),
    _ => null,
  };
}
