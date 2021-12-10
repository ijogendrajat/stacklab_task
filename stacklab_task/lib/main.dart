import 'package:flutter/material.dart';

import 'screens/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Stack Lab Task",
      theme: ThemeData(
        // Define the default brightness and colors.
        primaryColor: Colors.grey,
      ),
      home: SplashScreen(),
    );
  }
}
