import 'package:flutter/material.dart';
import '../shared/menu_drawer.dart';
import '../shared/menu_bottom.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Nasir The Body Builder')),
      drawer: MenuDrawer(),
      bottomNavigationBar: MenuBottom(),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/DubaiBeach.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Container(
            padding: EdgeInsets.all(24),
            width: 400,
            height: 130,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Colors.white70,
            ),
            child: Center(
              child: Text(
                'Commit to be fit, dare to be great \nwith GloboFitness',
                textAlign: TextAlign.center,
                style: TextStyle(
                  shadows: [
                    Shadow(
                      blurRadius: 2.0,
                      color: Colors.grey,
                      offset: Offset(1.0, 1.0),
                    ),
                  ],
                  fontSize: 22,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
