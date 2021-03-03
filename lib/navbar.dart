import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: Text('a'),
            leading: Text('Menu'),
            subtitle: Text('b'),
            trailing: Icon(Icons.ac_unit),
          ),
          ListTile(
            title: Text('yef'),
            leading: Text('Menu'),
            subtitle: Text('yeff'),
            trailing: Icon(Icons.ac_unit_sharp),
          ),
        ],
      ),
    );
  }
}
