import 'package:flutter/material.dart';

class addCategoryScreen extends StatefulWidget {
  @override
  _addCategoryScreenState createState() => _addCategoryScreenState();

    static const routeName = "/addCategory";

}

class _addCategoryScreenState extends State<addCategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Catergory'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('New Catergory Screen'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
