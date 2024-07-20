import 'package:c11_exam_fraiday/screens/home_two-screen.dart';
import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeTwoscreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        HomeTwoscreen.routeName: (context) => HomeTwoscreen(),
      },
    );
  }
}
