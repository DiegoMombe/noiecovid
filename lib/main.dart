import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() => runApp(CovidHomeScreen());

class CovidHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: HomeScreen(),
    );
  }
}
