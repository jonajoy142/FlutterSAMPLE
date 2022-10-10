import 'package:flutter/material.dart';
import 'package:flutter_application_1/inputtextDisplay.dart';
import 'package:flutter_application_1/listView.dart';
import 'package:flutter_application_1/routingScreenOne.dart';

// import 'package:flutter_application_1/screen_home.dart';


void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      home: ScreenOne(),
    );
  }
}
