import 'package:flutter/material.dart';

class Todolist extends StatefulWidget {
  @override
  _TodolistState createState() => _TodolistState();
}

class _TodolistState extends State<Todolist> {
  TextEditingController title = TextEditingController();
  List todo = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("To do list"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              controller: title,
              decoration: InputDecoration(labelText: "Title"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: MaterialButton(
              child: Text("Add todo"),
              color: Colors.blue,
              onPressed: () {
                if (title.text != "")
                  setState(() {
                    todo.add(title.text);
                  });
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: MaterialButton(
              child: Text("Remove All"),
              color: Colors.red,
              onPressed: () {
                setState(() {
                  todo.clear();
                });
              },
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: (todo.length == 0) ? 0 : todo.length,
              separatorBuilder: (context, index) => Divider(),
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Text("${index + 1}", style: TextStyle(fontSize: 30)),
                  title: Text("${todo[index].toString().toUpperCase()}"),
                  trailing: GestureDetector(
                    onTap: () {
                      setState(() {
                        todo.removeAt(index);
                      });
                    },
                    child: Icon(Icons.cancel),
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
