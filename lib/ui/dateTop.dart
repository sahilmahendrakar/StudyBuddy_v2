import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

class dateTop extends StatefulWidget {
  @override
  _dateTopState createState() => _dateTopState();
}

class _dateTopState extends State<dateTop> {
  
  DateTime time = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[

              IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  setState(() {
                    time = time.subtract(Duration(days: 1));
                  });
                },
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
                onPressed: () {
                  setState(() {
                    time = time.add(Duration(days: 1));
                  });
                },
                iconSize: 33,
              ),
            ],
          );
  }
}