import 'package:flutter/material.dart';
import 'package:flutter_app/welcome_screen.dart';
import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WelcomeScreen(),
      theme: ThemeData.dark().copyWith(
          primaryColor: kBackGroundColor,
          scaffoldBackgroundColor: kBackGroundColor),
      debugShowCheckedModeBanner: false,
    );
  }
}
