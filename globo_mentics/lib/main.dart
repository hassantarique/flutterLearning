import 'package:flutter/material.dart';

void main() {
  runApp(GlobeApp());
}

class GlobeApp extends StatelessWidget {
  const GlobeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Global Fitness')),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/DubaiBeach.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(child: Text('Commit to be fit')),
        ),
      ),
    );
  }
}
