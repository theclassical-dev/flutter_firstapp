import 'package:flutter/material.dart';

class Secondmult extends StatefulWidget {
  @override
  _SecondmultState createState() => _SecondmultState();
}

class _SecondmultState extends State<Secondmult> {
  List a = [3, 2, 8, 9, 1];
  List b = [8, 6, 4, 3, 2];

  List result = [];

  void multuply() {
    for (var i = 0; i < a.length; i++) {
      var m = a[i] * b[i];
      result.add(m);
    }
  }

  @override
  Widget build(BuildContext context) {
    multuply();
    return Scaffold(
      appBar: AppBar(
        title: Text("Matrix Mul"),
      ),
      body: ListView.separated(
        itemCount: result.length,
        separatorBuilder: (context, index) => Divider(),
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              "${a[index]} * ${b[index]} = ${result[index]}",
              style: TextStyle(fontSize: 40),
            ),
          );
        },
      ),
    );
  }
}
