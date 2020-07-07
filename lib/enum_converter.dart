library enum_converter;

class EnumConverter {
  static String convert(enumValue) {
    return enumValue.toString().split('.').last;
  }
}
