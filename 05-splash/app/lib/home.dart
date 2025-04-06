import 'package:flutter/material.dart';
import 'main_home.dart';
import 'events.dart';
import 'sponsors.dart';
import 'contacts.dart';

void main() {
  runApp(Home());
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _currentIndex = 0;

  final tabs = [
    Center(child: MainHome(),),
    Center(child: Events(),),
    Center(child: Sponsors(),),
    Center(child: Contacts(),),
  ];
  
  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  Widget _getScreen(int index) {
    switch (index) {
      case 0:
        return MainHome();
      case 1:
        return Events();
      case 2:
        return Sponsors();
      case 3:
        return Contacts();
      default:
        return MainHome();
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Change the theme to dark mode
      // theme: ThemeData(
      //   brightness: Brightness.dark, // Brightness.light
      // ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Splash Screen'),
        ),
        body: SafeArea(
          child: tabs[_currentIndex],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.blue,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white70,
          currentIndex: _currentIndex,
          onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.event),
              label: 'Events',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.monetization_on),
              label: 'Sponsors',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: 'Contacts',
            ),
          ],
        ),
      ),
    );
  }
}
