import 'package:flutter/material.dart';

class BrownPalette {
  // Base color
  static const Color baseBrown = Color.fromRGBO(174, 121, 75, 1.0); // #AE794B

  // Shades of brown
  static const Color brown50 = Color(0xFFF5EDE6);
  static const Color brown100 = Color(0xFFEAD6C4);
  static const Color brown200 = Color(0xFFDFBFA2);
  static const Color brown300 = Color(0xFFD4A880);
  static const Color brown400 = Color(0xFFC9925E);
  static const Color brown500 = Color(0xFFAE794B); // Base color
  static const Color brown600 = Color(0xFF9C6B43);
  static const Color brown700 = Color(0xFF8A5D3B);
  static const Color brown800 = Color(0xFF784F33);
  static const Color brown900 = Color(0xFF66412B);

  // MaterialColor for theming
  static const MaterialColor brown = MaterialColor(
    0xFFAE794B, // Base brown color
    <int, Color>{
      50: brown50,
      100: brown100,
      200: brown200,
      300: brown300,
      400: brown400,
      500: brown500,
      600: brown600,
      700: brown700,
      800: brown800,
      900: brown900,
    },
  );
}

class ColorsHelper {
  static const Color inputColor = Color(0xFFC9925E);
  static const Color bgColor = Color(0xFFF5EDE6);
  static const Color buttonColor = Color(0xFFAE794B);
  static const Color baseColor = Color(0xFFAE794B);

  // MaterialColor for theming
  static const MaterialColor brown = MaterialColor(
    0xFFAE794B, // Base brown color
    <int, Color>{400: inputColor, 50: bgColor},
  );
}
