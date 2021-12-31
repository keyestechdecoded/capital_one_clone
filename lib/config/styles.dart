import 'package:flutter/material.dart';

abstract class CapOneColors {
  static const Color blue = Color(0xFF003A6F);
  static const Color yellow = Color(0xFFFFE512);
  static const Color red = Color(0xFFA12830);

  static const Color secondBlue = Color(0xFF0D74AF);
}

TextStyle appBarText =
    const TextStyle(color: Colors.white, decoration: TextDecoration.underline);

TextStyle loginScreenText = const TextStyle(
  decoration: TextDecoration.underline,
  color: CapOneColors.blue,
  fontWeight: FontWeight.bold,
);
