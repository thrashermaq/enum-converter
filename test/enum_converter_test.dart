import 'package:enum_converter/enum_converter.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('valid enum input', () {
    expect(EnumConverter.convert(Test.VAL1), 'VAL1');
    expect(EnumConverter.convert(Test.VAL2), 'VAL2');
  });

  test('non enum input', () {
    expect(EnumConverter.convert(null), 'null');
    expect(EnumConverter.convert(1), '1');
    var x = X('test');
    expect(EnumConverter.convert(x), x.toString());
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
