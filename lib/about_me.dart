import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


// url_launcher: ^5.2.4 in pubspec.yaml

class AboutMe extends StatefulWidget {
  @override
  _AboutMeState createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: new Text(
          "About Creator",
          style: new TextStyle(
              fontSize: 26.0,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w800),
        ),
      ),
      body: new Center(

          child: new ListView(

              children: <Widget>[
                  new Card(
                    child: InkWell(
                      splashColor: Colors.black87,
                      child: new ListTile(
                        leading: CircleAvatar(
                            child: new Text('G', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22.0),), backgroundColor: Colors.black87),
                        title: Text('GitHub',style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.w700, fontStyle: FontStyle.italic)),
                        subtitle: Text("devansh03", style: TextStyle(fontSize: 20.0),),
                        trailing: ConstrainedBox(constraints: BoxConstraints(
                          minHeight: 44,
                          minWidth: 44,
                          maxHeight: 64,
                          maxWidth: 64,
                        ),
                          child : Image.asset('images/github.png',fit: BoxFit.cover,),
                        ),
                  ),
                  onTap: () => _launchURLGitHub()),
                ),
                  new Card(
                    child: InkWell(
                      splashColor: Colors.blueAccent,
                      child: new ListTile(
                         leading: CircleAvatar(
                             child: new Text('L', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22.0),), backgroundColor: Colors.blueAccent),
                         title: Text('LinkedIn',style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.w700, fontStyle: FontStyle.italic)),
                         subtitle: Text("devansh-baldwa-401953178", style: TextStyle(fontSize: 16.0),),
                        trailing: ConstrainedBox(constraints: BoxConstraints(
                          minHeight: 44,
                          minWidth: 44,
                          maxHeight: 64,
                          maxWidth: 64,
                        ),
                          child : Image.asset('images/LinkedIn.png',fit: BoxFit.cover,),
                        ),

                  ),
                  onTap: () => _launchURLLinkedIn(),
                )),
                  new Card(
                    child: InkWell(
                      splashColor: Colors.orange,
                      child: new ListTile(
                          leading: CircleAvatar(
                              child: new Text('S', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 22.0),), backgroundColor: Colors.orange),
                          title: Text('Stack Overflow',style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.w700, fontStyle: FontStyle.italic)),
                          subtitle: Text("/11506014/devansh-baldwa", style: TextStyle(fontSize: 16.0),),
                          trailing: ConstrainedBox(constraints: BoxConstraints(
                            minHeight: 44,
                            minWidth: 44,
                            maxHeight: 64,
                            maxWidth: 64,
                           ),
                          child : Image.asset('images/StackOverflow.png',fit: BoxFit.cover,),
                        ),
                  ),
                  onTap: () => _launchURLStackOverflow(),
                )),
                  new Card(
                    child: InkWell(
                        splashColor: Colors.black54,
                        child: new ListTile(
                            leading: CircleAvatar(
                                child: new Text('M', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22.0),), backgroundColor: Colors.black54),
                            title: Text('Medium',style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.w700, fontStyle: FontStyle.italic)),
                            subtitle: Text("@devanshbaldwa", style: TextStyle(fontSize: 20.0),),
                          trailing: ConstrainedBox(constraints: BoxConstraints(
                            minHeight: 44,
                            minWidth: 44,
                            maxHeight: 64,
                            maxWidth: 64,
                          ),
                            child : Image.asset('images/medium.jpeg',fit: BoxFit.cover,),
                          ),
                  ),
                  onTap: () => _launchURLMedium(),
                )),
                  new Card(
                    child: InkWell(
                       splashColor: Colors.pink,
                      child: new ListTile(
                        leading: CircleAvatar(
                            child: new Text('I', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22.0),), backgroundColor: Colors.pink),
                        title: Text('Instagram',style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.w700, fontStyle: FontStyle.italic)),
                        subtitle: Text("devanshbaldwa", style: TextStyle(fontSize: 20.0),),
                        trailing: ConstrainedBox(constraints: BoxConstraints(
                          minHeight: 44,
                          minWidth: 44,
                          maxHeight: 64,
                          maxWidth: 64,
                        ),
                          child : Image.asset('images/instagram.jpeg',fit: BoxFit.cover,),
                        ),
                  ),
                  onTap: () => _launchURLInstagram(),
                )),
                  new Card(
                    child: InkWell(
                      splashColor: Colors.lightBlueAccent,
                      child: new ListTile(
                        leading: CircleAvatar(
                            child: new Text('T', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22.0),), backgroundColor: Colors.lightBlueAccent),
                        title: Text('Twitter',style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.w700, fontStyle: FontStyle.italic)),
                        subtitle: Text("DevanshBaldwa", style: TextStyle(fontSize: 20.0),),

                        trailing: ConstrainedBox(constraints: BoxConstraints(
                          minHeight: 44,
                          minWidth: 44,
                          maxHeight: 64,
                          maxWidth: 64,
                        ),
                          child : Image.asset('images/twitter.png',fit: BoxFit.cover,),
                        ),
//                        trailing: CircleAvatar(
//                          backgroundImage: AssetImage("images/github.png"),
//
//                        ),
                      ),
                      onTap: () => _launchURLTwitter(),
                    )),
                new Card(
                    child: InkWell(
                      splashColor: Colors.deepOrange,
                      child: new ListTile(
                        leading: CircleAvatar(
                            child: new Text('R', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22.0),), backgroundColor: Colors.deepOrange),
                        title: Text('Reddit',style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.w700, fontStyle: FontStyle.italic)),
                        subtitle: Text("devansh03", style: TextStyle(fontSize: 20.0),),

                        trailing: ConstrainedBox(constraints: BoxConstraints(
                          minHeight: 44,
                          minWidth: 44,
                          maxHeight: 64,
                          maxWidth: 64,
                        ),
                          child : Image.asset('images/reddit.png',fit: BoxFit.cover,),
                        ),
//                        trailing: CircleAvatar(
//                          backgroundImage: AssetImage("images/github.png"),
//
//                        ),
                      ),
                      onTap: () => _launchURLReddit(),
                    )),
              ],
      ),

      ),

    );
  }

  _launchURLGitHub() async{
    const url = 'https://github.com/devansh03';
    if(await canLaunch(url)){
      await launch(url);
    } else {
      throw "Could not launch $url";
    }
  }

  _launchURLStackOverflow() async{
    const urlStackOverflow = 'https://stackoverflow.com/users/11506014/devansh-baldwa';
    if(await canLaunch(urlStackOverflow)){
    await launch(urlStackOverflow);
    } else {
    throw "Could not launch $urlStackOverflow";
    }
  }


  _launchURLLinkedIn() async{
      const urlLinkedIn = 'https://www.linkedin.com/in/devansh-baldwa-401953178/';
      if(await canLaunch(urlLinkedIn)){
      await launch(urlLinkedIn);
      } else {
      throw "Could not launch $urlLinkedIn";
      }
}

  _launchURLMedium() async{
      const urlMedium = 'https://medium.com/@devanshbaldwa';
      if(await canLaunch(urlMedium)){
      await launch(urlMedium);
      } else {
      throw "Could not launch $urlMedium";
      }
  }

  _launchURLInstagram() async{
      const urlInstagram = 'https://www.instagram.com/devanshbaldwa/';
      if(await canLaunch(urlInstagram)){
      await launch(urlInstagram);
      } else {
      throw "Could not launch $urlInstagram";
      }
  }

  _launchURLTwitter() async{
    const urlTwitter = 'https://twitter.com/DevanshBaldwa';
    if(await canLaunch(urlTwitter)){
      await launch(urlTwitter);
    } else {
      throw "Could not launch $urlTwitter";
    }
  }

  _launchURLReddit() async{
    const urlReddit = 'https://www.reddit.com/user/devansh03/';
    if(await canLaunch(urlReddit)){
      await launch(urlReddit);
    } else {
      throw "Could not launch $urlReddit";
    }
  }
}

