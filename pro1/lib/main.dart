import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("This is my app"),
            centerTitle: true,
            backgroundColor: Colors.black45,
          ),
          body: Container(
            color: Color.fromARGB(255, 112, 22, 15),
            child: Image(
              image: AssetImage('Assets/a.jpeg'),
            ),
            height: 500,
            width: 500,
          ),
        ),
      ),
    );
