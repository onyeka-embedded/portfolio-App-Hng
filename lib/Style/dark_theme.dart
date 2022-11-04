import 'package:flutter/material.dart';

class Themes {
   static final light = ThemeData(
     scaffoldBackgroundColor: Color.fromARGB(255, 248, 247, 247),
      primaryColor: Colors.white,
      brightness: Brightness.light,
       colorScheme: ThemeData().colorScheme.copyWith(
          secondary: Colors.white, 
            brightness: Brightness.light,
          ),
      );

  static final dark = ThemeData(
      scaffoldBackgroundColor: const Color(0xff141d26),
      primaryColor: const Color(0xff141d26),
      brightness: Brightness.dark,
      colorScheme: ThemeData().colorScheme.copyWith(
          secondary: const Color(0xff141d26), 
            brightness: Brightness.dark,
          ),
      );
}
