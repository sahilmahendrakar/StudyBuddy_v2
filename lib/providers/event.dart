import 'package:flutter/material.dart';

import './category.dart';

class Event {
  final String name;
  final String description;
  final Category category;

  Event({
    @required this.name,
    @required this.description,    ///I DONT KNOW HOW TO REMOVE @REQUIRED FOR THIS W/O ERROR
    @required this.category,
  });

}