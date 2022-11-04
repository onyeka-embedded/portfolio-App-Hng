import 'package:flutter/material.dart';
import 'package:portfolio_app/provider/dark_theme.dart';
import 'package:provider/provider.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Consumer<DarkThemeProvider>(
        builder: (BuildContext context, data, child) {
      return Container(
        height: h * 0.07,
        width: w / 3.5,
        decoration: BoxDecoration(
            color: data.isDark ? Colors.white : Colors.black,
            borderRadius: BorderRadius.circular(10),
           //  border: Border.all(
            // width: 2, color: Colors.orangeAccent)
            ),
        child: Center(
          child: Text(
            text,
            
            style: TextStyle(
                fontFamily: "Mukta",
                fontWeight: FontWeight.bold,
                color: data.isDark ? Colors.black : Colors.white,
                fontSize: 18),
          ),
        ),
      );
    });
  }
}
