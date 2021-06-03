import 'dart:ffi';

import 'package:flutter/material.dart';

int main() {
  runApp(MyApp());
  return 0;
}

//we creaated this methot to run out appp "MyApp" is the name of our app
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  //ui related settings
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Center(
          child: Container(
            child: Text("Welcome to my app"),
          ),
        ),
      ),
    );
  }
}
