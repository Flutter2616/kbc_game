import 'package:flutter/material.dart';
import 'package:kbc_game/screen/dashscreen.dart';
import 'package:kbc_game/screen/homescreen.dart';
import 'package:kbc_game/screen/lastscreen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => Homescreen(),
        'dash':(context) => Dashscreen(),
        'Last':(context) => Lastscreen(),
      },
      // home: Lastscreen(),
    ),
  );
}
