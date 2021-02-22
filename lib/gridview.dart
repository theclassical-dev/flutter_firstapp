import 'package:flutter/material.dart';

class Gridview extends StatefulWidget {
  @override
  _GridviewState createState() => _GridviewState();
}

class _GridviewState extends State<Gridview> {
  TextEditingController a1 = TextEditingController();
  List todo = ["dodo", "eba", "fufu", "fanta", "coke"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grideview"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              controller: a1,
              decoration: InputDecoration(labelText: "Title"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: MaterialButton(
                child: Text("clear all"),
                color: Colors.red,
                onPressed: () {
                  setState(() {
                    todo.clear();
                  });
                },
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 2.0,
                  mainAxisSpacing: 2.0,
                ),
                itemCount: todo.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    child: Container(
                      height: 100,
                      color: Colors.red,
                      child: Center(
                        child: Text(
                          "${todo[index]}",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                    onTap: () {
                      String xc = a1.text;
                      if (xc == "") {
                        setState(() {
                          a1.text = "${todo[index].toString().toUpperCase()}";
                        });
                      } else {
                        setState(() {
                          a1.text =
                              "$xc, ${todo[index].toString().toUpperCase()}";
                        });
                      }
                    },
                  );
                }),
          ),
        ],
      ),
    );
  }
}
