import 'package:flutter/material.dart';
import 'screens/input_page.dart';
import 'screens/resaults_page.dart';
void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: InputPage(),
      initialRoute: '/',
      routes: {
        '/':(context) => InputPage(),
        'second':(context) => Resaults()
      },
      
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0D22), //for navigation color
        scaffoldBackgroundColor: Color(0xFF0A0D22), //for body color
      ),


    );
  }
}


