import 'package:flutter/material.dart';
import 'package:todo_app/UI/Screens/home/home_screen.dart';
import 'package:todo_app/UI/Screens/splash%20screen/splash_screen.dart';
import 'package:todo_app/UI/Utilities/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      routes: {
        SplashScreen.iD: (context) => SplashScreen(),
        HomeScreen.id: (context) => HomeScreen(),
      },
      initialRoute: SplashScreen.iD,
    );
  }
}
