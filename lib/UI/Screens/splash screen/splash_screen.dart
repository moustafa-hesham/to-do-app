import 'package:flutter/material.dart';
import 'package:todo_app/UI/Utilities/app_assets.dart';

class SplashScren extends StatefulWidget {
  const SplashScren({super.key});
  static String iD = 'splash screen';

  @override
  State<SplashScren> createState() => _SplashScrenState();
}

class _SplashScrenState extends State<SplashScren> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2));
    return Scaffold(
      body: Image.asset(AppAssets.splash),
    );
  }
}
