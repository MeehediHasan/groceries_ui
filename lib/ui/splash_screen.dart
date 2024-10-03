import 'package:flutter/material.dart';

import '../utils/asset_paths.dart';
import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      moveToNextScreen();
    });
  }

  void moveToNextScreen() {
    // Navigator.of(context).pushReplacementNamed('/home');
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          AssetPaths.splashScreenImg,
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.fill,
          errorBuilder: (context, error, stackTrace) {
            return const Text('Error loading image');
          },
        ),
      ),
    );
  }
}
