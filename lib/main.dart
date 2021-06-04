import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "First_App",
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My first flutter app"),
      ),
      body: Container(
        child: Center(child: Text("Hello flutter")),
      ),
    );
  }
}
