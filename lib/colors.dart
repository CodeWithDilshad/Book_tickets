import 'package:flutter/material.dart';

class CustomSwatch extends MaterialColor {
  CustomSwatch(int primary, Map<int, Color> swatch) : super(primary, swatch);

  static const int _customPrimaryValue = 0xFF687daf;

  static const MaterialColor customSwatch =
      MaterialColor(_customPrimaryValue, <int, Color>{
    50: Color(0xFFE0FFE0),
    100: Color(0xFFB0FFB0),
    200: Color(0xFF80FF80),
    300: Color(0xFF50FF50),
    400: Color(0xFF20FF20),
    500: Color(_customPrimaryValue),
    600: Color(0xFF00CC00),
    700: Color(0xFF009900),
    800: Color(0xFF006600),
    900: Color(0xFF003300),
  });
}