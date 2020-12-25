import 'package:flutter/material.dart';

// main func. is starting point for all Flutter apps
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[500],
        body: Center(
          child: FlatButton(
            onPressed: () {
              print('Gold.');
            },
            child: Image(
              image: AssetImage('images/gold.png'),
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[900],
          title: Text('I am Rich2'),
        ),
      ),
    ),
  );
}
