import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './screens/addAssignment.dart';
import './screens/addCategory.dart';
import './screens/addEvent.dart';

import './ui/speedDial.dart';
import './ui/dateTop.dart';

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
      initialRoute: "/",
      routes: {
        addEventScreen.routeName : (context) => addEventScreen(),
        addAssignmentScreen.routeName : (context) => addAssignmentScreen(),
        addCategoryScreen.routeName : (context) => addCategoryScreen(),
      },
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          //----------------------This is the date at the top----------------------------
          dateTop(),

          //----------------------Calendar and rest (page maybe) go here----------------------------
        ],
      ),
      floatingActionButton: optionButton(),
    );
  }
}
