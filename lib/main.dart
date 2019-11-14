import 'package:flutter/material.dart';
import 'package:jokes_app/home.dart';

void main() async => runApp(Jokes());

class Jokes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        title : "Jokes For You",
        home : new Home());
  }
}
  