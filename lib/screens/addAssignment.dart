import 'package:flutter/material.dart';

import '../ui/dropDown.dart';

class addAssignmentScreen extends StatefulWidget {
  @override
  _addAssignmentScreenState createState() => _addAssignmentScreenState();

    static const routeName = "/addAssignment";

}

class _addAssignmentScreenState extends State<addAssignmentScreen> {
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();
  final timeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Assignment'),
        actions: <Widget>[
          IconButton (
            icon: Icon(Icons.delete),
            onPressed: (){},
          ),
          IconButton (
            icon: Icon(Icons.check),
            onPressed: (){},
          )
        ],
      ),
      body: Column (
        children: <Widget>[
          Container(
            width: .9 * MediaQuery.of(context).size.width,
            child: TextField(
              controller: titleController, 
              decoration: InputDecoration (
                labelText: "Assignment Name"
              ), 
              style: TextStyle(fontSize: 20),
            ),
            margin: EdgeInsets.symmetric(vertical: 10),

          ),
          Container(
            width: .9 * MediaQuery.of(context).size.width,
            child: TextField(
              controller: descriptionController, 
              decoration: InputDecoration (
                labelText: "Description"
              ), 
              style: TextStyle(fontSize: 20),
            ),
            margin: EdgeInsets.symmetric(vertical: 10),

          ),
          dropDown(),
          Container(
            width: .9 * MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(top: .45 * MediaQuery.of(context).size.height ),
            child: RaisedButton(
              color: Colors.blue,
              padding: EdgeInsets.symmetric(vertical: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(25.0))
              ),
              //Currently goes back to main page.
              child: Icon(Icons.add, color: Colors.white),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
