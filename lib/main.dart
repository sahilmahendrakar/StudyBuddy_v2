import 'package:flutter/material.dart';

import './ui/speedDial.dart';
import 'package:intl/intl.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StudyBuddy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.blue,
      ),
      home: MyHomePage(title: 'Study Buddy'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  DateTime time = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Row(
            
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            
            
            children: <Widget>[
              //----------------------Date Left Button----------------------------
              IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: null,
                iconSize: 33,
              ),

              Container(
                child: Text(
                  DateFormat("yMMMd").format(time),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.normal, 
                    fontSize: 35,
                    letterSpacing: -2,
                    color: Colors.grey[600],
                  ),
                ),
              ),

              IconButton(
                icon: Icon(Icons.arrow_forward_ios),
                onPressed: null,
                iconSize: 33,
              ),

              //----------------------Date Right Button----------------------------
            ],
          ),

          //----------------------Calendar and rest (page maybe) go here----------------------------
        ],
      ),
      floatingActionButton: optionButton(),
    );
  }
}
