import 'package:flutter/material.dart';

class dropDown extends StatefulWidget {
  @override
  _dropDownState createState() => _dropDownState();
}

class _dropDownState extends State<dropDown> {
  String dropdownValue = 'One';
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Center(
        child: DropdownButton<String>(
          value: dropdownValue,
          onChanged: (String newValue) {
            setState(() {
              dropdownValue = newValue;
            });
          },
          items: <String>['One', 'Two', 'Free', 'Four']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}