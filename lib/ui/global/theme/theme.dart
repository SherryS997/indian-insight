import 'package:flutter/material.dart';

enum AppTheme {
  Dark,
  Light,
}

final appThemeData = {
  AppTheme.Light: ThemeData(
      primaryColor: Colors.yellow[50], accentColor: Colors.yellow[50]),
  AppTheme.Dark:
      ThemeData(primaryColor: Colors.blue[900], accentColor: Colors.blue[900])
};
