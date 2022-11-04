import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/dark_theme.dart';

class Socials extends StatelessWidget {
  const Socials({Key? key, required this.image}) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
     double h = MediaQuery.of(context).size.height;
    // w = MediaQuery.of(context).size.width;
    return Consumer<DarkThemeProvider>(
        builder: (BuildContext context, data, child) {
        return Container(
          height: h * 0.07,
          width: h * 0.07,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(h * 0.08),
            border: Border.all(width: 2, color: data.isDark ? Colors.white : Colors.black),
            image:  DecorationImage(
                image: AssetImage(image), fit: BoxFit.cover),
          ),
        );
      }
    );
  }
}
