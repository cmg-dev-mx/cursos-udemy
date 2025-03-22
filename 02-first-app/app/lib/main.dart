import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[900],
          title: Center(
            child: Text(
              style: TextStyle(color: Colors.white, fontSize: 35),
              'App',
            ),
          ),
        ),
        body: SafeArea(
          child: Center(child: Image(image: AssetImage('images/diamond.png'))),
        ),
      ),
    );
  }
}
