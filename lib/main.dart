import 'package:flutter/material.dart';

// main func. is starting point for all Flutter apps
void main() {
  runApp(MainWidget());
}

class MainWidget extends StatefulWidget {
  @override
  _MainWidgetState createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  String imageName1 = 'images/mcdiamond.png';
  String imageName2 = 'images/gold.png';
  String imageName = 'images/mcdiamond.png';

  toggle() {
    setState(() {
      if (imageName == imageName1) {
        imageName = imageName2;
        print('Gold.');
      } else {
        imageName = imageName1;
        print('Diamond.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
//        backgroundColor: Colors.blueGrey[200],
        backgroundColor: Color(0xff087575),
        body: Center(
          child: buildFlatButton(),
        ),
        appBar: AppBar(
//          backgroundColor: Colors.blueGrey[700],
          backgroundColor: Color(0x60000000),
//          backgroundColor: Color(0x60ffffff),
          title: Text('I am Rich-ish'),
        ),
      ),
    );
  }

  Widget buildFlatButton() {
    return Container(
      padding: EdgeInsets.all(50.0),
      child: FlatButton(
        onPressed: toggle,
        child: Image(
          image: AssetImage(imageName),
        ),
      ),
    );
  }
}
