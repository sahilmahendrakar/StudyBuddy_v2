import 'package:flutter/material.dart';

import './category.dart';

class Assignment {
  String name;
  String description;
  Category category;
  int hours;
  int minutes;
  DateTime dueDate;

  Assignment({
    @required this.name,
    @required this.description,  ///I DONT KNOW HOW TO REMOVE T@REQUIRED FOR HIS W/O ERROR
    @required this.category,
    @required this.hours,
    @required this.minutes,
    @required this.dueDate,
  });

}