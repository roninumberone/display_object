import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:display1/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        backgroundColor: Colors.black87,
        splash: Icon(
          Icons.abc_rounded,
          size: 140,
          color: Colors.yellow,
        ),
        nextScreen: LoginPage(),
        splashTransition: SplashTransition.scaleTransition,
        duration: 1500,
      ),
    );
  }
}
