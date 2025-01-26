import 'package:flutter/material.dart';

class AppTextStyles {
  static const String fontFamily = 'Proxima Nova';

  static const TextStyle title = TextStyle(
    fontFamily: fontFamily,
    fontSize: 34,
    fontWeight: FontWeight.w700,
    color: Colors.white,
    letterSpacing: -0.3,
  );

  static const TextStyle subtitle = TextStyle(
    fontFamily: fontFamily,
    fontSize: 11,
    fontWeight: FontWeight.w600,
    color: Colors.white,
    letterSpacing: -0.2,
  );

  static const TextStyle body = TextStyle(
    fontFamily: fontFamily,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: Colors.white,
    letterSpacing: -0.1,
  );

  static const TextStyle question = TextStyle(
    fontFamily: fontFamily,
    fontSize: 24,
    fontWeight: FontWeight.w700,
    color: Colors.white,
    letterSpacing: -0.2,
    height: 1.2,
  );

  static const TextStyle quote = TextStyle(
    fontFamily: fontFamily,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.italic,
    color: Colors.white70,
    letterSpacing: -0.1,
  );

  static const TextStyle option = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: Colors.white,
    letterSpacing: -0.1,
  );

  static const TextStyle hint = TextStyle(
    fontFamily: fontFamily,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: Colors.white70,
    letterSpacing: -0.1,
    height: 1.3,
  );
}
