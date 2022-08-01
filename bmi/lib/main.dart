import 'package:flutter/material.dart';
import 'Screens/input_page.dart';

void main() {
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0AE21),
        appBarTheme: AppBarTheme(
          color: Color(0xFF0AE21),
        ),
        scaffoldBackgroundColor: Color(0xFF0AE21),
      ),
      home: InputPage(),
    );
  }
}
