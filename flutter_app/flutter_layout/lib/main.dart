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
          backgroundColor: Colors.red,
          title: const Text('Flutter Layout',style:TextStyle(fontSize:24),
          )
        ),
      body: const SizedBox(width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [Text('Item 1',style:TextStyle(fontSize: 45)),Text('Item 2',style:TextStyle(fontSize: 45))],),
      ),
      drawer:const Drawer(),
      floatingActionButton: const FloatingActionButton(onPressed: null,
      child:Icon(Icons.add)
      ),
      bottomNavigationBar: BottomAppBar(color: Colors.red,),
      ), //Scaffold
    ); //MaterialApp
  }
}
