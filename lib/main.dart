import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/homePage.dart';
import 'package:flutter_catalog/pages/login.dart';

void main() {
  runApp(MaterialApp(
    title: "First_App",
    home: LoginPage(),
    theme: ThemeData(primarySwatch: Colors.red),
    routes: {
      "/login": (context) => LoginPage(),
      "/home": (context) => HomePage(),
    },
  ));
}
