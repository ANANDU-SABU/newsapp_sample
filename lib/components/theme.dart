import 'package:flutter/material.dart';

ThemeData lightmode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
      background: const Color.fromARGB(255, 143, 142, 142),
      primary: const Color.fromARGB(255, 136, 134, 134),
      secondary: Colors.grey.shade200),
);
ThemeData darkmode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
      background: Color.fromARGB(255, 45, 39, 39),
      primary: Colors.grey.shade800,
      secondary: Colors.grey.shade700),
);