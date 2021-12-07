import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:muzik/screen/app.dart';

void main() {
  runApp(MaterialApp(
    title: 'Muzik',
    debugShowCheckedModeBanner: false,
    home: AnimatedSplashScreen(
      duration: 1000,
      backgroundColor: Colors.grey,
      splash: const CircleAvatar(
        backgroundColor: Colors.transparent,
        foregroundImage: AssetImage('assets/icon.png'),
      ),
      nextScreen: const MyApp(),
      splashTransition: SplashTransition.scaleTransition,
    ),
  ));
}
