import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Api extends StatefulWidget {
  @override
  _ApiState createState() => _ApiState();
}

class _ApiState extends State<Api> {
  TextEditingController a1 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Api Testing"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              decoration: InputDecoration(labelText: "Search"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: MaterialButton(
                child: Text("Search"),
                color: Colors.blue,
                onPressed: () {
                  setState(() {});
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
