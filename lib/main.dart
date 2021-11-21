import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
            secondary: Colors.purple,
            primary: Color(
              0xFF0A0E21,
            )),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        textTheme: TextTheme(
          bodyText1: TextStyle(
            color: Color(0xFFFFFFFF),
          ),
        ),
      ),
      home: InputPage(),
    );
  }
}
