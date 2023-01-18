import 'package:flutter/material.dart';
import 'package:next_6_months/main_screen/pages/home.dart';
import 'package:next_6_months/main_screen/pages/learn.dart';
import 'package:next_6_months/main_screen/pages/notes.dart';
import 'package:next_6_months/main_screen/pages/reports.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  selected(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  List<StatelessWidget> pages = [
    const Home(),
    const Reports(),
    const Learn(),
    const Notes()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.auto_graph_sharp), label: 'Reports'),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: 'Learn'),
          BottomNavigationBarItem(icon: Icon(Icons.note_add_sharp), label: 'Notes'),
        ],
        onTap: selected,
        currentIndex: _currentIndex,
        selectedItemColor: Colors.red,
        backgroundColor: Colors.white54,
      ),
      body: pages[_currentIndex],
    );
  }
}
