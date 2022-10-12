import 'package:flutter/material.dart';
import 'package:muscle_magic/screens/excercise_screen.dart';
import 'package:muscle_magic/screens/splash_screen.dart';
import 'screens/main_screen.dart';
import 'screens/profile_screen.dart';

void main() {
  runApp(const Test());
}

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      theme: ThemeData(brightness: Brightness.dark),
    );
  }
}
