import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:splash_and_login/screens/congrats_screen.dart';

import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  initState() {
    super.initState();
    splashDelay();
  }

  void splashDelay() async {
    bool skipLogin = false;
    final prefs = await SharedPreferences.getInstance();
    final bool? saveUser = prefs.getBool('saveUser');
    if (saveUser != null) {
      skipLogin = saveUser;
    }
    await Future.delayed(
      const Duration(seconds: 3),
    );

    if (skipLogin) {
      Navigator.pushNamed(
        context,
        '/congrats',
      );
    } else {
      Navigator.pushNamed(
        context,
        '/login',
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/splash.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        constraints: const BoxConstraints.expand(),
      ),
    );
  }
}
