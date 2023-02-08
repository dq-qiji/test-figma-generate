import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray700 = fromHex('#5d5d5d');

  static Color cyan100 = fromHex('#b2ebe9');

  static Color black900 = fromHex('#000000');

  static Color blueA400 = fromHex('#1877f2');

  static Color gray900 = fromHex('#262323');

  static Color cyan600 = fromHex('#01aab1');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
