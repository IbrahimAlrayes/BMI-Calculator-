import 'package:flutter/material.dart';
import 'InputPage.dart';
import 'SecondPage.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Color(0xFF0A0E21)),
        // primaryColor: Color(0xFF0A0E21),
        backgroundColor: Color.fromARGB(255, 20, 45, 171),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        colorScheme:
            Theme.of(context).colorScheme.copyWith(secondary: Colors.white10),
        // text
        textTheme: TextTheme(
          bodyText2: TextStyle(color: Colors.white),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(),
        '/second': (context) => SecondScreen()
      },
     
    );
  }
}
