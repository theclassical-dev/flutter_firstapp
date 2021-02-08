import 'package:flutter/material.dart';

class Multiplication extends StatefulWidget {
  @override
  _MultiplicationState createState() => _MultiplicationState();
}

class _MultiplicationState extends State<Multiplication> {
  List mul = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  int x = 5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("multiplication"),
      ),
      body: ListView.separated(
        itemCount: mul.length,
        separatorBuilder: (context, index) => Divider(),
        itemBuilder: (context, index) {
          int m = x * mul[index];

          return ListTile(
            title: Text(
              "$x * ${mul[index]} = $m",
              style: TextStyle(fontSize: 40),
            ),
          );
        },
      ),
    );
  }
}
