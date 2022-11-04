import 'package:flutter/material.dart';
import 'package:portfolio_app/provider/dark_theme.dart';
import 'package:provider/provider.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, required this.tittle}) : super(key: key);
    final String tittle;
  @override
  Widget build(BuildContext context) {
    final _provider = Provider.of<DarkThemeProvider>(context, listen: false);
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              _provider.setDarkTheme = !_provider.isDark;
            },
            child: Consumer<DarkThemeProvider>(
                builder: (BuildContext context, iconD, child) {
              return (Icon(iconD.isDark ? Icons.sunny : Icons.dark_mode));
            }),
          ),
          const Text(
            "Onyeka_Embedded",
            style: TextStyle(
                fontFamily: "Mukta", fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const Icon(Icons.more_vert_outlined),
        ],
      ),
    );
  }
}
