import 'package:flutter/material.dart';

class Greaternumber extends StatefulWidget {
  @override
  _GreaternumberState createState() => _GreaternumberState();
}

class _GreaternumberState extends State<Greaternumber> {
  TextEditingController a1 = TextEditingController();
  TextEditingController b1 = TextEditingController();
  TextEditingController c1 = TextEditingController();
  TextEditingController r1 = TextEditingController();

  void greater() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("simple calculator"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                controller: a1,
                decoration: InputDecoration(labelText: "1st Number"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                controller: b1,
                decoration: InputDecoration(labelText: "2st Number"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                controller: c1,
                decoration: InputDecoration(labelText: "3rd Number"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                controller: r1,
                decoration: InputDecoration(labelText: "Result"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: MaterialButton(
                child: Text("calculate"),
                color: Colors.red,
                onPressed: () {
                  int a = int.parse(a1.text);
                  int b = int.parse(b1.text);
                  int c = int.parse(c1.text);

                  if (a > b && a > c) {
                    r1.text = "$a is greater";
                  } else if (b > a && b > c) {
                    r1.text = "$b is greater";
                  } else if (c > a && c > b) {
                    r1.text = "$c is greater";
                  }

                  a1.clear();
                  b1.clear();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
