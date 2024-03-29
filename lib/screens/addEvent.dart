import 'package:flutter/material.dart';

class addEventScreen extends StatefulWidget {
  @override
  _addEventScreenState createState() => _addEventScreenState();

  static const routeName = "/addEvent";
}

class _addEventScreenState extends State<addEventScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Event'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('New Event Screen'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
