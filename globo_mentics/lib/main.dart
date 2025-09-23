import 'package:flutter/material.dart';
import 'package:globo_mentics/screens/bmi_screen.dart';
import 'package:globo_mentics/screens/intro_screen.dart';

void main() {
  runApp(GlobeApp());
}

class GlobeApp extends StatelessWidget {
  const GlobeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      routes: {
        '/': (context) => IntroScreen(),
        '/bmi': (context) => BmiScreen(),
      },
      initialRoute: '/',
    );
  }
}
