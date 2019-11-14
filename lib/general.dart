import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

class General extends StatefulWidget {
  General({Key key}) : super(key: key);

  @override
  _GeneralState createState() => _GeneralState();
}

class _GeneralState extends State<General> {
  Future<Map> getGeneralJoke() async {
    String apiUrlForGeneralJoke =
        "https://official-joke-api.appspot.com/random_joke";
    http.Response responseForGeneralJoke = await http.get(apiUrlForGeneralJoke);
    return json.decode(responseForGeneralJoke.body);
  }

  Map _data;

  @override
  void initState() {
    getGeneralJoke().then((result) {
      setState(() {
        _data = result;
      });
    });
    super.initState();
  }

  // var _data = await getGeneralJoke();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.limeAccent,
      child: Column(
        children: <Widget>[
          Card(
            child: ListTile(
              title: Text(_data['setup']),
            ),
          ),
          Card(
            child: ListTile(
              title: Text(_data['punchline']),
            ),
          ),
        ],
      ),
    );
  }
}
