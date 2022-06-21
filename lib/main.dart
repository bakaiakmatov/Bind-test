import 'package:flutter/material.dart';
import 'constants/app_themes.dart';
import 'main_screen/main_screen.dart/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BIND TEST',
      theme: mainTheme(),
      home: const MainScreen(),
    );
  }
}
