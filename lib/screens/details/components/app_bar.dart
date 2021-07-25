//import 'dart:js';

import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/main.dart';

AppBar detailsAppBar() {
  return AppBar(
    elevation: 0,
    leading: IconButton(
      icon: Icon(
        Icons.arrow_back_rounded,
        color: Colors.white,
      ),
      onPressed: () { },
    ),
    actions: <Widget>[

      IconButton(
        icon: Icon(Icons.add_comment),
        onPressed: () {},
      ),
    ],
  );
}
