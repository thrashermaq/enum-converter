import 'package:enum_converter/enum_converter.dart';

void main() {
  // Output: VAL1
  print(EnumConverter.convert(Test.VAL1));
  // Output: VAL2
  print(EnumConverter.convert(Test.VAL2));
}

enum Test {
  VAL1,
  VAL2,
}
