import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Rows and Columns'),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, // As well we are using Scroll, so we need to use this property
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                // margin: EdgeInsets.all(10),
                margin: EdgeInsets.only(left: 10, right: 10),
                padding: EdgeInsets.all(10),
                color: Colors.red, 
                width: 300, 
                height: 300,
                child: Image(
                  image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT--tPKXw4nTgdOeUZmNAFaZgmkJZy_P4sp0w&s'),
                )
              ),
              Container(color: Colors.teal, width: 100, height: 100),
              SizedBox(height: 20), // This is used to give space between two containers
              Container(
                color: Colors.blue, 
                width: 100, 
                height: 100, 
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(color: Colors.yellow, width: 50, height: 50),
                    Container(color: Colors.orange, width: 50, height: 50),
                    Container(color: Colors.red, width: 50, height: 50),
                  ],
                )
              ),
              Container(color: Colors.green, width: 100, height: 100),
            ],
          ),
        ),
      ),
    );
  }
}
