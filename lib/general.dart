import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

class General extends StatefulWidget {
  General({Key key}) : super(key: key);

  @override
  _GeneralState createState() => _GeneralState();

  
}

Future<Map> getGeneralJoke() async {
  String apiUrlForGeneralJoke =
      "https://official-joke-api.appspot.com/random_joke";
  http.Response responseForGeneralJoke = await http.get(apiUrlForGeneralJoke);
  return json.decode(responseForGeneralJoke.body);
}

class _GeneralState extends State<General> {
  @override
  Widget build(BuildContext context) {
    void _refreshPage(){
            setState((){
            });
          }
    return FutureBuilder(
      future: getGeneralJoke(),
      builder: (BuildContext context, AsyncSnapshot<Map> snapshot) {
        if (snapshot.hasData) {
          Map content = snapshot.data;
          _getPunchline() {
            return Card(
              child: ListTile(
                title: Text(
                  content['punchline'],
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w300),
                ),
              ),
            );
          }

          _refToGetPunchline() {
            return _getPunchline();
          }

          return Container(
            color: Colors.cyan.shade100,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 100,
                ),
                Card(
                  child: ListTile(
                    title: Text(
                      content['setup'],
                      style: TextStyle(
                          fontSize: 36.0, fontWeight: FontWeight.w600),
                    ),
                    onTap: () => _refToGetPunchline(),
                  ),
                ),
                SizedBox(height: 200.0),
                _refToGetPunchline(),
                SizedBox(
                  height: 20.0,
                ),
                RaisedButton(
                  child: Text("Another Joke"),
                  color: Colors.limeAccent,
                  onPressed: () {
                    _refreshPage();
                  },
                )
              ],
            ),
          );
        } else {
          return Container(
            color: Colors.limeAccent,
            child: Image.asset("images/laugh_general.jpg"),
          );
        }
      });
  }
}
