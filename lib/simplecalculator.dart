import 'package:flutter/material.dart';

class Simplecalcultor extends StatefulWidget {
  @override
  _SimplecalcultorState createState() => _SimplecalcultorState();
}

class _SimplecalcultorState extends State<Simplecalcultor> {
  TextEditingController a1 = TextEditingController();
  TextEditingController b1 = TextEditingController();
  TextEditingController r1 = TextEditingController();
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
                  int xx = int.parse(a1.text) + int.parse(b1.text);
                  r1.text = "$xx";

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
