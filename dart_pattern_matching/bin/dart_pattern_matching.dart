import 'package:dart_pattern_matching/dart_pattern_matching.dart' as dart_pattern_matching;

void main(List<String> arguments) {
  final wanderer = dart_pattern_matching.createPerson('Wanderer', 99);

  print('Hello world: ${wanderer!.name}!');
}
