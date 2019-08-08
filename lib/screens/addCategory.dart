import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../ui/dropDown.dart';

class addCategoryScreen extends StatefulWidget {
  @override
  _addCategoryScreenState createState() => _addCategoryScreenState();

    static const routeName = "/addCategory";

}

class _addCategoryScreenState extends State<addCategoryScreen> {
  
  final titleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Catergory'),
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
          Container (
            width: .9 * MediaQuery.of(context).size.width,
            child: Text(
              "Add a Category", 
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(bottom: 5, top: 50),
          ),
          Container(
            width: .9 * MediaQuery.of(context).size.width,
            child: TextField(
              controller: titleController, 
              decoration: InputDecoration (
                labelText: "Category Name"
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
