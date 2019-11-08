import 'package:flutter/material.dart';
import 'package:jokes_app/about_me.dart';
import 'package:jokes_app/general.dart';
import 'package:jokes_app/programming.dart';
import 'package:jokes_app/animals.dart';


class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
int selectedIndex = 0;
  final widgetOptions = [
    General(),
    Programming(),
    Animals()
  ];
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Jokes! Jokes! Jokes!"),
        backgroundColor: Colors.blueGrey,
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.info),
              onPressed: () {
                var homeToAboutMe = new MaterialPageRoute(
                    builder: (BuildContext context) => AboutMe());
                Navigator.of(context).push(homeToAboutMe);
              }),
        ],
      ),
      bottomNavigationBar: new BottomNavigationBar(
        backgroundColor: Colors.blueGrey,
        unselectedItemColor: Colors.white,
        unselectedLabelStyle: TextStyle(color: Colors.white),
        currentIndex: selectedIndex,
        selectedItemColor: Colors.orangeAccent,
        selectedLabelStyle: TextStyle(color: Colors.orangeAccent),
        onTap: onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.all_inclusive),
            title: Text("General"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.code),
            title: Text("Programming")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.adjust),
            title: Text("Animals")
          ),
        ],
      ),
      body: Center(
        child: widgetOptions.elementAt(selectedIndex),
      ),
    );
  }
}
