import 'package:flutter/material.dart';

class Animals extends StatefulWidget {
  Animals({Key key}) : super(key: key);

  @override
  _AnimalsState createState() => _AnimalsState();
}

class _AnimalsState extends State<Animals> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Animals"),
    );
    
  }
}