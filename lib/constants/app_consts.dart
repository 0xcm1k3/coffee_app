// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class AppConstants {
  static const Color kBackgroundColor = Color(0xFF212325);
  static const Color kPrimaryColor = Color(0xFFD4A056);
  static const Color kSecondaryColor = Color(0xFFEADBCC);
  static const Color kSubtitlesColor = Color(0XFF838B92);

  static Widget CustomText(
      {required String text,
      required double fontSize,
      FontWeight weight = FontWeight.normal,
      double spacing = 0,
      Color color = Colors.white,
      TextAlign align = TextAlign.left,
      int? maxLines}) {
    return Text(text,
        maxLines: maxLines,
        overflow: TextOverflow.ellipsis,
        textDirection: TextDirection.ltr,
        textAlign: align,
        style: TextStyle(
          fontFamily: "Amerigo",
          fontSize: fontSize,
          fontWeight: weight,
          letterSpacing: spacing,
          color: color,
          height: 1.2,
        ));
  }
}
