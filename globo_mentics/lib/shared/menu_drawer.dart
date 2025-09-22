import 'package:flutter/material.dart';

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
      menuListItem.add(
        ListTile(
          title: Text(element, style: TextStyle(fontSize: 18)),
          onTap: () {},
        ),
      );
    });

    return menuListItem;
  }
}
