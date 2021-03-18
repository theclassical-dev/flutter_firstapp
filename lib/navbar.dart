import 'package:firstapp/calculator.dart';
import 'package:firstapp/api.dart';
import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(child: Text('Hello')),
          ListTile(
            title: Text('a'),
            leading: Text('Menu'),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Calculator(),
                ),
              );
            },
            leading: Text('Calculator'),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Api(),
                ),
              );
            },
            leading: Text('Api Testing'),
          ),
        ],
      ),
    );
  }
}
