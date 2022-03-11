import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import 'login.dart';


class HomeSplashScreen extends StatefulWidget {
  @override
  _HomeSplashScreenState createState() => _HomeSplashScreenState();
}

class _HomeSplashScreenState extends State<HomeSplashScreen> {
  @override
  Widget build(BuildContext context) {
    return _introScreen();
  }
}

Widget _introScreen() {
  return Stack(
    children: <Widget>[
      SplashScreen(
        seconds: 5,
        gradientBackground: const LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [Color(0xFFFFFFFF), Color(0xFFFFFFFF)],
        ),
        navigateAfterSeconds: Login(),
        loaderColor: Colors.transparent,
      ),
      Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/sivir_inteira.png"),
            fit: BoxFit.fitHeight,
          ),
        ),
      ),
    ],
  );
}
