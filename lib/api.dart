import 'dart:convert';

// import 'package:flutter/src/widgets/async.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Api extends StatefulWidget {
  @override
  _ApiState createState() => _ApiState();
}

Future getPhotos(q) async {
  final response = await http.get(
    "https://api.pexels.com/v1/search?query=$q",
    headers: <String, String>{
      'Authorization':
          '563492ad6f91700001000001eb846945022545cfbc5ef8f19b8f1949'
    },
  );

  if (response.statusCode == 200) {
    var jsondata = json.decode(response.body);
    return jsondata['photos'];
  } else {
    print(response.body);
  }
}

class _ApiState extends State<Api> {
  TextEditingController a1 = TextEditingController(text: "tigers");
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
              controller: a1,
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
          Expanded(
              child: FutureBuilder(
                  future: getPhotos(a1.text),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      if (snapshot.hasData) {
                        if (snapshot.data.length > 0) {
                          return ListView.separated(
                              itemCount: snapshot.data.length,
                              separatorBuilder:
                                  (BuildContext context, int index) =>
                                      Divider(),
                              itemBuilder: (context, index) {
                                var pic = snapshot.data[index];
                                return Container(
                                  height: 200,
                                  width: MediaQuery.of(context).size.width,
                                  child: Image.network(pic['src']['medium']),
                                );
                              });
                        } else {
                          return Center(child: Text("no pictures found"));
                        }
                      } else {
                        return Center(child: CircularProgressIndicator());
                      }
                    } else {
                      return Center(child: CircularProgressIndicator());
                    }
                  }))
        ],
      ),
    );
  }
}
