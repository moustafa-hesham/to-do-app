import 'package:flutter/material.dart';
import 'package:todo_app/UI/Screens/home/home_screen.dart';
import 'package:todo_app/UI/Utilities/app_assets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static String iD = 'splash screen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushNamed(context, HomeScreen.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(AppAssets.splash),
    );
  }
}
