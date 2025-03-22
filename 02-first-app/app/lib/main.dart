import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Center(
          child: Text(
            "Rich",
            style: TextStyle(color: Colors.yellow, fontSize: 35),
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Image(
            image: AssetImage('images/diamond.png')
          ),
        ),
      ),
    ),
  ),
);
