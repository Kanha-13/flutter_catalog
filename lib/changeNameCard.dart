import 'package:flutter/material.dart';

import 'bg_image.dart';

class changeNameCard extends StatelessWidget {
  const changeNameCard({
    Key? key,
    required this.myName,
    required TextEditingController nameController,
  })  : _nameController = nameController,
        super(key: key);

  final String myName;
  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        BgImage(),
        SizedBox(
          height: 20,
        ),
        Text(myName,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
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
    );
  }
}
