import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'New_Page.dart';
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.blueGrey,
      
      ),
      home:  new HomePage(),
      routes: <String, WidgetBuilder>{
       "/a" : (BuildContext context) => new NewPage("New Page"),
      }
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Drawer App"),
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
      ),
      drawer: new Drawer(
        child:  new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Abdul Kadir"),
              accountEmail: new Text("Abdul@gmail.com"),
              currentAccountPicture: new CircleAvatar(
              backgroundColor: Colors.white,  
              child: new Text("A"),
              ),
            ),
            new ListTile(
              title: new Text("Refresh"),
              trailing: new Icon(Icons.refresh),
            
            ),
            new ListTile(
              title: new Text("Forword"),
              trailing: new Icon(Icons.arrow_forward),
             // onTap: () => Navigator.of(context).pushNamed("/a"), 
             onTap: (){
               Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext
               context) => new NewPage("Forword Page")));
             },
            ),
            new ListTile(
              title: new Text("Backword"),
              trailing: new Icon(Icons.arrow_back),
               onTap: (){
               Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext
               context) => new NewPage("BackWord Page")));
             },
            ),
            new Divider(),
            new ListTile(
            title: new Text("Close"),
            trailing: new Icon(Icons.close),
            onTap: ()=> Navigator.of(context).pop(),
            
            ),
            new ListTile(
            title: new Text("Exit"),
            trailing: new Icon(Icons.exit_to_app),
            onTap: ()=> Navigator.pop(context),
            
            )
          ],
      
        ),
        
      ),
      
      body: new Container(
        child: new Center(
          child: new Text("Home Page"),
           
        ),
      ),
    );
  }
}