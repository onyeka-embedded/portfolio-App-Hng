import 'package:flutter/material.dart';
import 'package:portfolio_app/view/about.dart';
import 'package:portfolio_app/view/portfolio.dart';
import 'package:portfolio_app/view/resume.dart';
import 'package:portfolio_app/view/skills.dart';
import 'package:provider/provider.dart';

import 'package:page_transition/page_transition.dart';
import 'package:url_launcher/url_launcher.dart';

import '../provider/dark_theme.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/custom_button.dart';
import '../widgets/socials.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _provider = Provider.of<DarkThemeProvider>(context, listen: false);
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              //Custom App BAr
              const CustomAppBar(
                tittle: "Onyeka_Embedded",
              ),
              SizedBox(
                height: 0.05 * h,
              ),
              Consumer<DarkThemeProvider>(
                  builder: (BuildContext context, data, child) {
                return Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            // Navigator.push(context, MaterialPageRoute(builder: (context) => const Portfolio()));
                            Navigator.push(
                              context,
                              PageTransition(
                                  type: PageTransitionType.rightToLeft,
                                  child: const Portfolio(),
                                  inheritTheme: true,
                                  ctx: context),
                            );
                          },
                          child: Container(
                            height: h / 3.5,
                            width: w * 0.1,
                            decoration: BoxDecoration(
                              color: data.isDark ? Colors.white : Colors.black,
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                            ),
                            child: RotatedBox(
                                quarterTurns: 3,
                                child: Center(
                                    child: Text(
                                  "Portfolio",
                                  style: TextStyle(
                                      fontFamily: "Mukta",
                                      color: data.isDark
                                          ? Colors.black
                                          : Colors.white,
                                      fontSize: 22),
                                ))),
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              height: h / 2.8,
                              width: h / 3,
                              decoration: BoxDecoration(
                                  color:
                                      data.isDark ? Colors.white : Colors.black,
                                  borderRadius: BorderRadius.circular(h * 0.1),
                                  image: const DecorationImage(
                                      image: AssetImage(
                                          "assets/images/profile.jpg"),
                                      fit: BoxFit.cover),
                                  border: Border.all(
                                      width: 3,
                                      color: Colors.orangeAccent.shade400)),
                            ),
                            SizedBox(
                              height: 0.01 * h,
                            ),
                            SizedBox(
                              width: h / 3,
                              child: Column(
                                children: const [
                                  Text(
                                    "Onyeka Ekwunife (Onyeka_Embedded)",
                                    style: TextStyle(
                                      //fontFamily: "Mukta",
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  Text(
                                    "Mobile Developer(Flutter ) | Embedded System Developer",
                                    style: TextStyle(
                                      // fontFamily: "Mukta",
                                      fontWeight: FontWeight.w200,
                                      fontSize: 15,
                                      //  height: 1.2
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            // Navigator.push(context, MaterialPageRoute(builder: (context) => const Resume()));
                            Navigator.push(
                              context,
                              PageTransition(
                                  type: PageTransitionType.rightToLeft,
                                  child: const Resume(),
                                  inheritTheme: true,
                                  ctx: context),
                            );
                          },
                          child: Container(
                            height: h / 3.5,
                            width: w * 0.1,
                            decoration: BoxDecoration(
                                color:
                                    data.isDark ? Colors.white : Colors.black,
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                )),
                            child: RotatedBox(
                                quarterTurns: 1,
                                child: Center(
                                    child: Text(
                                  "Resume",
                                  style: TextStyle(
                                      color: data.isDark
                                          ? Colors.black
                                          : Colors.white,
                                      fontSize: 22),
                                ))),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: h * 0.05,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: w / 8, right: w / 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                              onTap: () {
                                //Navigator.push(context, MaterialPageRoute(builder: (context) => const About()));
                                Navigator.push(
                                  context,
                                  PageTransition(
                                      type: PageTransitionType.rightToLeft,
                                      child: const About(),
                                      inheritTheme: true,
                                      ctx: context),
                                );
                              },
                              child: const CustomButton(
                                text: "About",
                              )),
                          InkWell(
                              onTap: () {
                                // Navigator.push(context, MaterialPageRoute(builder: (context) => const Skills()));
                                Navigator.push(
                                  context,
                                  PageTransition(
                                      type: PageTransitionType.rightToLeft,
                                      child: const Skills(),
                                      inheritTheme: true,
                                      ctx: context),
                                );
                              },
                              child: const CustomButton(
                                text: "Skills",
                              )),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: h * 0.1,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: w / 15, right: w / 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                              onTap: () async {
                                if (!await launchUrl(
                                    Uri.parse(
                                        "https://www.youtube.com/channel/UCFCldU2b88QR46FmeDGUvcA/"),
                                    mode: LaunchMode.externalApplication)) {
                                  throw 'Could not launch ${"https://www.youtube.com/channel/UCFCldU2b88QR46FmeDGUvcA/"}';
                                }
                              },
                              child: const Socials(
                                  image: "assets/images/youtube.png")),
                          GestureDetector(
                              onTap: () async {
                                if (!await launchUrl(
                                    Uri.parse(
                                        "https://www.linkedin.com/mwlite/in/onyeka-ekwunife-9b2527176"),
                                    mode: LaunchMode.externalApplication)) {
                                  throw 'Could not launch ${"https://www.linkedin.com/mwlite/in/onyeka-ekwunife-9b2527176"}';
                                }
                              },
                              child: const Socials(
                                  image: "assets/images/linkdln.jpeg")),
                          GestureDetector(
                              onTap: () async {
                                if (!await launchUrl(
                                    Uri.parse(
                                        "https://www.github.com/onyeka-embedded"),
                                    mode: LaunchMode.externalApplication)) {
                                  throw 'Could not launch ${"https://www.github.com/onyeka-embedded"}';
                                }
                              },
                              child: const Socials(
                                  image: "assets/images/github.png")),
                          const Socials(image: "assets/images/twitter.png"),
                        ],
                      ),
                    )
                  ],
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}
