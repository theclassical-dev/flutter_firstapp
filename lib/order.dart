import 'package:flutter/material.dart';

class Order extends StatefulWidget {
  @override
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> {
  TextEditingController a1 = TextEditingController();
  List todo = ["dodo", "eba", "fuf", "fanta", "coke"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("list"),
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
            child: ListView.separated(
              itemCount: (todo.length == 0 ? 0 : todo.length),
              separatorBuilder: (context, index) => Divider(),
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Text(
                    "${index + 1}",
                    style: TextStyle(fontSize: 30),
                  ),
                  title: Text(
                    "${todo[index].toString().toUpperCase()}",
                  ),
                  trailing: GestureDetector(
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
                    child: Icon(Icons.add),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
