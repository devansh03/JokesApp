import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Animals extends StatefulWidget {
  Animals({Key key}) : super(key: key);

  @override
  _AnimalsState createState() => _AnimalsState();
}

class _AnimalsState extends State<Animals> {
  Future<Map> getProgrammingJoke() async {
    String apiUrlForProgrammingJoke =
        "https://official-joke-api.appspot.com/random_joke";
    http.Response responseForProgrammingJoke = await http.get(apiUrlForProgrammingJoke);
    return json.decode(responseForProgrammingJoke.body);
  }

  @override
  Widget build(BuildContext context) {
    void _refreshPage(){
            setState((){
            });
          }
    return FutureBuilder(
        future: getProgrammingJoke(),
        builder: (BuildContext context, AsyncSnapshot<Map> snapshot){
          if(snapshot.hasData){
            Map content = snapshot.data;
            _getPunchline(){
              return Card(
                child: ListTile(
                  title: Text(content['punchline'],style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w300),),
                ),
              );
            }
            _refToGetPunchline(){
              return _getPunchline();
            }
            return Container(
              color: Colors.cyan.shade100,
              child: Column(
                children: <Widget>[
                  SizedBox(height: 100,),
                  Card(
                    child: ListTile(
                      title: Text(content['setup'],style: TextStyle(fontSize: 36.0, fontWeight: FontWeight.w600),),
                      onTap: () => _refToGetPunchline(),
                    ),
                  ),
                  SizedBox(height: 250.0),
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
          }
          else {
            return Container(
              color: Colors.limeAccent,
              child: Image.asset("images/comedy_images_3.jpeg"),
            );
          }
        }
    );
  }
}