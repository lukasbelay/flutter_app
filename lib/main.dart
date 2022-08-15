import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: const Text("flutter is fun"),
        ),
        body: Center(
          child: Container(
            child: Text('my app'),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.access_alarm),
                label: 'sus',
                backgroundColor: Colors.amber),
            BottomNavigationBarItem(
                icon: Icon(Icons.agriculture),
                label: 'sus',
                backgroundColor: Color.fromARGB(255, 143, 110, 9)),
            BottomNavigationBarItem(
                icon: Icon(Icons.agriculture), label: 'sus'),
          ],
        ),
      ),
    );
  }
}
