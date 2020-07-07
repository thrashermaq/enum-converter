import 'package:enum_converter/enum_converter.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('valid enum input', () {
    final converter = EnumConverter();
    expect(converter.convert(Test.VAL1), 'VAL1');
    expect(converter.convert(Test.VAL2), 'VAL2');
  });

  test('non enum input', () {
    final converter = EnumConverter();
    expect(converter.convert(null), 'null');
    expect(converter.convert(1), '1');
    var x = X('test');
    expect(converter.convert(x), x.toString());
  });
}

enum Test {
  VAL1,
  VAL2,
}

class X {
  final String val;
  X(this.val);
}
