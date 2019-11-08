import 'package:flutter/material.dart';

class General extends StatefulWidget {
  General({Key key}) : super(key: key);

  @override
  _GeneralState createState() => _GeneralState();
}

class _GeneralState extends State<General> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("General"),
    );
    
  }
}