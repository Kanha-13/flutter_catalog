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
        alignment: Alignment.topCenter,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Container(
            color: Colors.black,
            width: 300,
            height: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  // padding: const EdgeInsets.all(28),
                  alignment: Alignment.center,
                  // color: Colors.red,
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    //to change box shape use shape
                    // shape: BoxShape.circle,
                    //to change box shape with side radius use border radius
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade400,
                          blurRadius: 8,
                          offset: Offset(3.0, 8.0))
                    ],
                    color: Colors.red,
                    gradient:
                        LinearGradient(colors: [Colors.yellow, Colors.pink]),
                  ),
                  child: Text(
                    "I am first box",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0,
                    ),
                  ),
                ),
                Container(
                  // padding: const EdgeInsets.all(28),
                  alignment: Alignment.center,
                  // color: Colors.red,
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    //to change box shape use shape
                    // shape: BoxShape.circle,
                    //to change box shape with side radius use border radius
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade400,
                          blurRadius: 8,
                          offset: Offset(3.0, 8.0))
                    ],
                    color: Colors.red,
                    gradient:
                        LinearGradient(colors: [Colors.yellow, Colors.pink]),
                  ),
                  child: Text(
                    "I am second box",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0,
                    ),
                  ),
                ),
                Container(
                  // padding: const EdgeInsets.all(28),
                  alignment: Alignment.center,
                  // color: Colors.red,
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    //to change box shape use shape
                    // shape: BoxShape.circle,
                    //to change box shape with side radius use border radius
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade400,
                          blurRadius: 8,
                          offset: Offset(3.0, 8.0))
                    ],
                    color: Colors.red,
                    gradient:
                        LinearGradient(colors: [Colors.yellow, Colors.pink]),
                  ),
                  child: Text(
                    "I am third box",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0,
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
