import 'package:flutter/material.dart';

import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class optionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SpeedDial(
          child: Icon(Icons.add),
          animatedIcon: AnimatedIcons.menu_close,
          closeManually: true,
          curve: Curves.bounceIn,
          tooltip: 'Add',
          elevation: 8.0,
          children: [
            SpeedDialChild(
              //child: Icon(Icons.calendar_today),
              //child: Icon(Icons.date_range),
              child: Icon(Icons.event),
              backgroundColor: Colors.white,
              foregroundColor: Colors.blue[900],              
              label: 'Add Event',
              labelStyle: TextStyle(fontSize: 12.5),
              onTap: () => {}
            ),
            SpeedDialChild(
              child: Icon(Icons.assignment),
              backgroundColor: Colors.white,
              foregroundColor: Colors.blue[900],
              label: 'Add Assignment',
              labelStyle: TextStyle(fontSize: 12.5),
              onTap: () => {},
            ),
            SpeedDialChild(
              //child: Icon(Icons.apps),
              child: Icon(Icons.class_),
              backgroundColor: Colors.white,
              foregroundColor: Colors.blue[900],
              label: 'Add Category',
              labelStyle: TextStyle(fontSize: 12.5),
              onTap: () => {},
            ),
          ],
        );
  }
}