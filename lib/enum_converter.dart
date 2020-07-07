library enum_converter;

class EnumConverter {
  String convert(enumValue) {
    return enumValue.toString().split('.').last;
  }
}
