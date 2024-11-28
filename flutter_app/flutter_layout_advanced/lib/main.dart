import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

Widget list() {
  List<Widget> cards = <Widget>[];
  for (int i = 0; i < 18; i++) {
    cards.add(
      Card(
        child: Container(
          width: double.infinity,
          child: Text(
            'Item $i',
            style: TextStyle(fontSize: 34),
          ),
        ),
      ),
    );
  }
  return Column(children: cards);
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FlutterLogo(),
                Text('Flutter Layout'),
                Icon(Icons.notification_add),
              ]),
        ),
        body: ListView.builder(
            itemCount: 18,
            itemBuilder: (context, index) {
              return list();
            }),
      ),
    );
  }
}
