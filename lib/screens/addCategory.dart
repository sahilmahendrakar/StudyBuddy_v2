import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../ui/colorPicker.dart';

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
              "Add Category", 
              style: TextStyle(
                fontSize: 25,
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
          colorPicker(),
          Container(
            width: .9 * MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(top: .475 * MediaQuery.of(context).size.height ),

            child: IconButton(
              color: Colors.black,
              //Currently goes back to main page.
              icon: Icon(Icons.add, color: Colors.red),
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
