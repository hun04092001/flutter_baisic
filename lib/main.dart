// ignore_for_file: prefer_const_constructors.import 'package:appflutter_one/my_class_room.dart';
////import 'package:appflutter_one/my_home_page.dart';
//import 'package:appflutter_one/mycimeno.dart';
import 'package:flutter/material.dart';
import 'package:appflutter_one/cinema.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyCinema(),
      debugShowCheckedModeBanner: false,
    );
  }
}
