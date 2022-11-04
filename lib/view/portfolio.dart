import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/dark_theme.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
            //Custom APPbar
            body:  Consumer<DarkThemeProvider>(
                  builder: (BuildContext context, data, child) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                      Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        
          children: [
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: const Icon(Icons.arrow_back_ios)),
                const Text(
                  "PORTFOLIO",
                  style: TextStyle(
                      fontFamily: "Mukta", fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const Icon(Icons.more_vert_outlined),
          ]
        ),
      ),
                      SizedBox( height: 0.05 * h,),
                     
                  ],
                );
              }
            ),
      ),
    );
  }

  TextStyle _cStyle() {
    return const TextStyle(
          fontFamily: "Mukta",
          fontSize: 17);
  }
}