
import 'package:flutter/material.dart';

void main() {
  runApp(MainHome());
}

class MainHome extends StatefulWidget {
  @override
  _MainHomeState createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('About'),
        ),
        body: Column(
          children: <Widget> [
            Container(
              child: Center(
                child: FlutterLogo(
                  size: 200,
                ),
              ),
            ),
            GestureDetector(
              child: Card(
                elevation: 4,
                color: Colors.black12,
                child: FlutterLogo(
                  size: 150,
                ),
              ),
              onTap: () {
                print('Card tapped');
              },
            ),
          ],
        ),
      ),
    );
  } 
}
