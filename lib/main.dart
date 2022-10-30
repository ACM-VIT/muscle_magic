import 'package:flutter/material.dart';
import 'package:muscle_magic/screens/splash_screen.dart';

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
