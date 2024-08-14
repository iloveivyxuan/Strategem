import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: const Color(0xFF181A25),
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xFF1E88E5),
      onPrimary: Colors.white,
      secondary: Color(0xFF81C784),
      onSecondary: Colors.black,
      surface: Color(0xFF424242),
      onSurface: Colors.white,
      error: Color(0xFFCF6679),
      onError: Colors.white,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF181A25),
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.white),
      titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: const Color(0xFF1E88E5),
      textTheme: ButtonTextTheme.primary,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
    iconTheme: const IconThemeData(color: Colors.white),
  );
}
