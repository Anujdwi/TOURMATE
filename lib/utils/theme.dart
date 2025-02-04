import 'package:flutter/material.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    fontFamily: 'Roboto',
    appBarTheme: const AppBarTheme(
      color: Colors.blue,
      iconTheme: IconThemeData(color: Colors.white),
    ),
  );

  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.blueGrey,
    fontFamily: 'Roboto',
    appBarTheme: const AppBarTheme(
      color: Colors.blueGrey,
      iconTheme: IconThemeData(color: Colors.white),
    ),
  );
}