import 'package:flutter/material.dart';
import 'package:flutter_catalog/bg_image.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login App"),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: [
            BgImage(),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: SingleChildScrollView(
                  child: Card(
                    child: Column(
                      children: [
                        Form(
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              children: [
                                TextFormField(
                                  decoration: InputDecoration(
                                      hintText: "Enter User Name",
                                      labelText: "User Name"),
                                ),
                                SizedBox(height: 20),
                                TextFormField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      hintText: "Enter password",
                                      labelText: "Password"),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {
                            //=====This method is for nevigating to page directly=====
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => HomePage()));
                            //=====This medod is for specfying the route of the page which we declare in main.dart ======
                            Navigator.pushNamed(context, "/home");
                          },
                          child: Text("Sign In"),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
