import 'package:flutter/material.dart';
import 'page/Home_Page.dart';
import 'page/sus.dart';
import 'page/Works_Page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentIndex = 0;
  final screens = [
    const HomePage(),
    const WorksPage(),
    const Sus(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.pink,
            title: const Center(
              child: Text("flutter is fun"),
            )),
        body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.access_alarm),
                label: 'home',
                backgroundColor: Colors.amber),
            BottomNavigationBarItem(
                icon: Icon(Icons.agriculture),
                label: 'works',
                backgroundColor: Color.fromARGB(255, 143, 110, 9)),
            BottomNavigationBarItem(
                icon: Icon(Icons.agriculture), label: 'sus'),
          ],
        ),
      ),
    );
  }
}
