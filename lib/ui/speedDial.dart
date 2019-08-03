import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:provider/provider.dart';

class optionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return SpeedDial(
          child: Icon(Icons.add),
          animatedIcon: AnimatedIcons.menu_close,
          animatedIconTheme: IconThemeData(size: 24.0),
          closeManually: true,
          curve: Curves.bounceIn,
          tooltip: 'Add',
          children: [
            SpeedDialChild(
              //child: Icon(Icons.calendar_today),
              //child: Icon(Icons.date_range),
              child: Icon(Icons.event),
              backgroundColor: Colors.white,
              foregroundColor: Colors.blue[800],              
              label: 'Add Event',
              labelBackgroundColor: Colors.grey[800],
              labelStyle: TextStyle(
                fontSize: 14,
                color: Colors.grey[200],
                height: 1,
                fontFamily: "Arial",
                //fontWeight: FontWeight.bold,
                ),
              onTap: () => {
                Navigator.pushNamed(context, "/addEvent")
              },
            ),
            SpeedDialChild(
              child: Icon(Icons.assignment),
              backgroundColor: Colors.white,
              foregroundColor: Colors.blue[800],
              label: 'Add Assignment',
              labelBackgroundColor: Colors.grey[800],
              labelStyle: TextStyle(
                fontSize: 14,
                color: Colors.grey[200],
                height: 1,
                fontFamily: "Arial",
                //fontWeight: FontWeight.bold,
              ),
                onTap: () => {
                  Navigator.pushNamed(context, "/addAssignment")
                },
            ),
            SpeedDialChild(
              //child: Icon(Icons.apps),
              child: Icon(Icons.class_),
              backgroundColor: Colors.white,
              foregroundColor: Colors.blue[800],
              label: 'Add Category',
              labelBackgroundColor: Colors.grey[800],
              labelStyle: TextStyle(
                fontSize: 14,
                color: Colors.grey[200],
                height: 1,
                fontFamily: "Arial",
                //fontWeight: FontWeight.bold,
              ),
              onTap: () => {
                Navigator.pushNamed(context, "/addCategory")
              },
            ),
          ],
        );
  }
}