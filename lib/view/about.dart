import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/dark_theme.dart';

class About extends StatelessWidget {
  const About({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
            //Custom APPbar
            body:  Consumer<DarkThemeProvider>(
                  builder: (BuildContext context, data, child) {
                return SingleChildScrollView(
                  child: Column(
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
                    "ABOUT",
                    style: TextStyle(
                        fontFamily: "Mukta", fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const Icon(Icons.more_vert_outlined),
                          ]
                        ),
                      ),
                        SizedBox( height: 0.01 * h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: w * 0.3,
                              child:  Divider(height: 15.0, color: data.isDark ? Colors.white : Colors.black)),
                              Wrap(
                                direction: Axis.horizontal,
                                children: List.generate(3, (index) => Container(
                                  margin: EdgeInsets.all(w * 0.01),
                                  height: h * 0.05,
                                  width: h * 0.01,
                                 decoration: BoxDecoration(
                                    color: data.isDark ? Colors.white : Colors.black,
                                    borderRadius: BorderRadius.circular(0.02 * h)
                    
                                 ),
                                )),
                              ),
                               SizedBox(
                              width: w * 0.3,
                              child: Divider(height: 15.0,  color: data.isDark ? Colors.white : Colors.black,)),
                          ],
                        ),
                           SizedBox(  height: 0.03 * h,),
                        Container(
                                height: h / 5,
                                width: h / 5,
                                decoration: BoxDecoration(
                                    color:
                                        data.isDark ? Colors.white : Colors.black,
                                    borderRadius: BorderRadius.circular(h / 5),
                                    image: const DecorationImage(
                                        image:
                                            AssetImage("assets/images/profile.jpg"),
                                        fit: BoxFit.cover),
                                   border: Border.all(
                                       width: 3, color: Colors.orangeAccent.shade400)
                                       ),
                              ),
                               SizedBox(  height: 0.02 * h,),
                              
                              SizedBox(
                                height: h / 6,
                                width: w * 0.9,
                                child: const Text(
                                  "I'm Onyeka Ekwunife, a graduate of Computer Congineering with major in embedded systems and mobile development",
                                    style: TextStyle(
                                           fontFamily: "Mukta",
                                           fontSize: 16),
                                  textAlign: TextAlign.center,
                                ),
                                //I have 8 months experience in mobile development using flutter. I have app in playstore, 
                              ),
                                 SizedBox(  height: 0.01 * h,),
                                SizedBox(
                                height: h / 6,
                                width: w * 0.9,
                                child: const Text(
                                  "I believe i have the skills to help your company build and scale up her products and Mentor beginners too",
                                    style: TextStyle(
                                           fontFamily: "Mukta",
                                           fontSize: 16),
                                  textAlign: TextAlign.center,
                                ),
                                //I have 8 months experience in mobile development using flutter. I have app in playstore, I believe i have the skills to help your company build and scale up her products
                              ),
                               SizedBox(  height: 0.01 * h,),
                              // Text("Phone:2328169347203"),
                              Padding(
                                padding: EdgeInsets.only(left: 0.05 * w, right: 0.05 * w),
                                child: Column(
                                 //
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  // crossAxisAlignment: CrossAxisAlignment.start,
                                  children:  [
                                    //Icon(Icons.arrow_forward_ios),
                                   Text("*  Phone: +2328169347203", style: _cStyle(),),
                                   Text("*  Email: ekwunifechris@gmail.com", style: _cStyle(),),
                                   Text("*  Degree: Bachelor Of Egineering", style: _cStyle(),),
                                   Text("*  Location: Benin-City/Nigeria", style: _cStyle(),),
                                  ],
                                ),
                              )
                    ],
                  ),
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