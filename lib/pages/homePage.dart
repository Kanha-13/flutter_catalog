import 'package:flutter/material.dart';

import '../changeNameCard.dart';
import '../drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // using _ with field name => makes them private
  TextEditingController _nameController = TextEditingController();
  var myName = "Your name";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.purple.shade200,
        appBar: AppBar(
          title: Text(
            "My First App",
            style: TextStyle(fontSize: 25.0),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: SingleChildScrollView(
            child: Card(
              child: changeNameCard(
                  myName: myName, nameController: _nameController),
            ),
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
