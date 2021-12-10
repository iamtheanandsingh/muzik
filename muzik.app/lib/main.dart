import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:muzik/screen/app.dart';
import 'package:firebase_core/firebase_core.dart';
import '';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
