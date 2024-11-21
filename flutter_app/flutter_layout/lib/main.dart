import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
	appBar: AppBar(
	  title: Text('Flutter Multiple Text Widgets'),
	),
        body: Container(
	  height: 800,
	  child: Column(
	    children:[
		Container(
		  height:200,
	          color: Colors.red,
		),//Container
	    ],//children
	   ),//Column
	),//Container
       ),//Scaffold
    );//MaterialApp
  }
}
