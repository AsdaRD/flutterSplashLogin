import 'package:flutter/material.dart';
import 'package:splash_and_login/screens/congrats_screen.dart';
import 'package:splash_and_login/screens/login_screen.dart';
import 'package:splash_and_login/screens/splash_screen.dart';

void main() {
  runApp(const MyLoginApp());
}

class MyLoginApp extends StatelessWidget {
  const MyLoginApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: const SplashScreen(),
      routes: <String, WidgetBuilder>{
        '/splash': (BuildContext context) => const SplashScreen(),
        '/login': (BuildContext context) => const LoginScreen(),
        '/congrats': (BuildContext context) => const CongratsScreen(),
      },
    );
  }
}
