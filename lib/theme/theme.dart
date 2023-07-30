import 'package:flutter/material.dart';
import 'package:flutter_base_project/models/theme/theme_data.dart';
import 'package:flutter_base_project/theme/colors.dart';

class CustomTheme {
  Color colorStatus1;
  Color colorStatus2;

  CustomTheme({required this.colorStatus1, required this.colorStatus2});

  factory CustomTheme.dark() {
    return CustomTheme(colorStatus1: Colors.red, colorStatus2: Colors.blue);
  }

  factory CustomTheme.light() {
    return CustomTheme(colorStatus1: Colors.white, colorStatus2: Colors.green);
  }

  static getCusTheme(THEME_MODE themeMode) {
    switch (themeMode) {
      case THEME_MODE.DARK:
        return CustomTheme.dark();
        break;
      case THEME_MODE.LIGHT:
        return CustomTheme.light();
        break;
      default:
        break;
    }
  }
}

final ThemeData lightThemeData = ThemeData.light().copyWith(
  brightness: Brightness.light,
  primaryColor: Colors.blue,
  primaryColorDark: Colors.red,
  textTheme: TextTheme(
    titleMedium: TextStyle(color: Colors.red, fontFamily: 'abc'),
  ),
  colorScheme: ColorScheme.fromSwatch()
      .copyWith(secondary: Colors.redAccent)
      .copyWith(background: Colors.white),
  bottomAppBarTheme: BottomAppBarTheme(color: Colors.white),
);

final ThemeData darkThemeData = ThemeData.dark().copyWith(
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    primaryColorDark: Colors.red,
    textTheme:
        TextTheme(titleMedium: TextStyle(color: Colors.red, fontFamily: 'abc'))
            .apply(bodyColor: AppColor.text),
    colorScheme: ColorScheme.fromSwatch()
        .copyWith(secondary: Colors.red)
        .copyWith(background: Colors.red),
    bottomAppBarTheme: BottomAppBarTheme(color: Colors.white));
