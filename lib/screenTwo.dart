// ignore_for_file: file_names
import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  final String name;
  const ScreenTwo({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(name),),
      body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          
          Text(" $name",style:TextStyle(color: Colors.green[700],fontWeight: FontWeight.bold,fontStyle:FontStyle.italic),),
          ElevatedButton(
            onPressed: () {Navigator.of(context).pop();},
            child: Text("GO BACK "),
            
          ),
          
          
        ],
      
      )),
    );
  }
}
