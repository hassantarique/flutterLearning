import 'package:flutter/material.dart';
import '../screens/bmi_screen.dart';
import '../screens/intro_screen.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(child: ListView(children: buildMenuItem(context)));
  }

  List<Widget> buildMenuItem(BuildContext context) {
    final List<String> menuTitles = [
      'Home',
      'BMI Calculator',
      'Weather',
      'Training',
    ];

    List<Widget> menuListItem = [];

    menuListItem.add(
      DrawerHeader(
        decoration: BoxDecoration(color: Colors.blueGrey),
        child: Text(
          'Globo Fitness',
          style: TextStyle(color: Colors.white, fontSize: 28),
        ),
      ),
    );

    menuTitles.forEach((String element) {
      Widget screen = Container();
      menuListItem.add(
        ListTile(
          title: Text(element, style: TextStyle(fontSize: 18)),
          onTap: () {
            switch (element) {
              case 'Home':
                screen = IntroScreen();
                break;
              case 'BMI Calculator':
                screen = BmiScreen();
                break;
            }
            Navigator.of(context).pop();
            Navigator.of(
              context,
            ).push(MaterialPageRoute(builder: (cotext) => screen));
          },
        ),
      );
    });

    return menuListItem;
  }
}
