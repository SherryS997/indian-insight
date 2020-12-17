import 'dart:ui';

import 'package:flutter/material.dart';

enum AppTheme {
  Dark,
  Light,
}

final appThemeData = {
  AppTheme.Light: ThemeData(
    primaryColor: Colors.yellow[50],
    accentColor: Colors.yellow[50],
    appBarTheme: AppBarTheme(
      color: Colors.yellow[50],
      textTheme: TextTheme(
        headline6: TextStyle(
          fontFamily: 'Sacramento',
          fontSize: 30,
          color: Colors.brown[900],
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.underline,
          decorationStyle: TextDecorationStyle.wavy,
          decorationThickness: 0.001,
        ),
      ),
    ),
    scaffoldBackgroundColor: Colors.yellow[50],
  ),
  AppTheme.Dark: ThemeData(
    primaryColor: Color.fromRGBO(0, 18, 45, 1),
    accentColor: Color.fromRGBO(0, 18, 45, 1),
    appBarTheme: AppBarTheme(
      color: Color.fromRGBO(0, 18, 45, 1),
      textTheme: TextTheme(
        headline6: TextStyle(
          fontFamily: 'Sacramento',
          fontSize: 30,
          color: Colors.white70,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.underline,
          decorationStyle: TextDecorationStyle.wavy,
          decorationThickness: 0.001,
        ),
      ),
    ),
    scaffoldBackgroundColor: Color.fromRGBO(0, 18, 45, 1),
  )
};
