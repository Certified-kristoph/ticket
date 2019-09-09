import 'package:flutter/material.dart';

class Stores extends StatefulWidget {
  Stores({Key key, this.title}) : super(key:key);

  final String title;
  @override
  _StoresState createState() => _StoresState();
}

class _StoresState extends State<Stores> {
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
    );
  }
}