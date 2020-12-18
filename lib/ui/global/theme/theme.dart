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
          fontSize: 40,
          color: Colors.brown[900],
          decoration: TextDecoration.underline,
          decorationStyle: TextDecorationStyle.wavy,
          decorationThickness: 0.1,
          decorationColor: Colors.brown[900],
        ),
      ),
    ),
    scaffoldBackgroundColor: Colors.yellow[50],
  ),
  AppTheme.Dark: ThemeData(
    primaryColor: Color.fromRGBO(13, 17, 23, 1),
    accentColor: Color.fromRGBO(13, 17, 23, 1),
    appBarTheme: AppBarTheme(
      color: Color.fromRGBO(13, 17, 23, 1),
      textTheme: TextTheme(
        headline6: TextStyle(
          fontFamily: 'Sacramento',
          fontSize: 40,
          color: Colors.white70,
          decoration: TextDecoration.underline,
          decorationStyle: TextDecorationStyle.wavy,
          decorationThickness: 0.1,
        ),
      ),
    ),
    scaffoldBackgroundColor: Color.fromRGBO(13, 17, 23, 1),
  )
};
