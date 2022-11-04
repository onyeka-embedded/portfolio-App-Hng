import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'Style/dark_theme.dart';
import 'provider/dark_theme.dart';
import 'view/mainpage.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    )
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  // This widget is the root of your application.
  DarkThemeProvider themeChangeProvider = DarkThemeProvider();
    void getCurrentAppTheme() async {
    themeChangeProvider.setDarkTheme =
        await themeChangeProvider.darkThemePrefs.getTheme();
  }
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
       providers: [
            ChangeNotifierProvider(create: (_) {
              return themeChangeProvider;
            }),
       ],
      child: Consumer<DarkThemeProvider>(builder: (context, themeProvider, child) {
          return MaterialApp(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
              theme: Themes.light,
                themeMode: themeProvider.themeMode,
                darkTheme: Themes.dark,
                home: const MainPage(),
          );
        }
      ),
    );
  }
}

