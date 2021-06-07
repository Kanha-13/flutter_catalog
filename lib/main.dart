import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/homePage.dart';

void main() {
  runApp(MaterialApp(
    title: "First_App",
    home: HomePage(),
    theme: ThemeData(primarySwatch: Colors.red),
  ));
}
