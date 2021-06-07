import 'dart:convert';

import 'package:flutter/material.dart';
import '../drawer.dart';
import 'package:http/http.dart' as http;
// import '../changeNameCard.dart';

// import '../changeNameCard.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // using _ with field name => makes them private
  TextEditingController _nameController = TextEditingController();
  var myName = "Your name";
  var url = "https://jsonplaceholder.typicode.com/photos";
  var data;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  getData() async {
    var res = await http.get(Uri.parse(url));
    data = jsonDecode(res.body);
    print(data);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text(
            "My First App",
            style: TextStyle(fontSize: 25.0),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: data != null
              ? ListView.builder(
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Image.network(data[index]["url"]),
                      title: Text(
                        data[index]["title"],
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle: Text(
                        "Id: ${data[index]["id"]}",
                        style: TextStyle(color: Colors.white),
                      ),
                    );
                  },
                  itemCount: data.length)
              : Center(
                  child: CircularProgressIndicator(),
                ),
        ),
        drawer: MyDrawer(),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              myName = _nameController.text;
              setState(() {});
            },
            child: Icon(
              Icons.arrow_right,
            )));
  }
}
