import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "First_App",
    home: HomePage(),
    theme: ThemeData(primarySwatch: Colors.purple),
  ));
}

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
              child: Column(
                children: <Widget>[
                  Image.asset(
                    "assets/kanha.jpg",
                    fit: BoxFit.cover,
                    width: 300,
                    height: 300,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(myName,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: TextField(
                      controller: _nameController,
                      keyboardType: TextInputType.text,
                      // obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter Your name",
                          labelText: "Name",
                          border: OutlineInputBorder()),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                  accountName: Text("Kanha Agrawal"),
                  accountEmail: Text("kanha.agr11@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage('assets/kanha.jpg'),
                  )),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Account"),
                subtitle: Text("Personal"),
                trailing: Icon(Icons.edit),
              ),
              ListTile(
                leading: Icon(Icons.email),
                title: Text("Email"),
                subtitle: Text("Kanha.agr11@gmail.com"),
                trailing: Icon(Icons.send),
              )
            ],
          ),
        ),
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
