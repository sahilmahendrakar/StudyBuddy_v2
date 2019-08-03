import 'package:flutter/material.dart';

class addAssignmentScreen extends StatefulWidget {
  @override
  _addAssignmentScreenState createState() => _addAssignmentScreenState();

    static const routeName = "/addAssignment";

}

class _addAssignmentScreenState extends State<addAssignmentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Assignment'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('New Assignment Screen'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
