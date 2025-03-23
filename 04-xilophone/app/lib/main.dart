import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

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
        appBar: AppBar(title: Text('Xilophone')),
        body: Column(
          children: <Widget>[
            TextButton(
              onPressed: () {
                final player = AudioPlayer();
                player.play(AssetSource('note1.wav'));
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.red,
                minimumSize: Size(double.infinity, 50),
              ),
              child: Text('Play Note 1', style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              onPressed: () {
                final player = AudioPlayer();
                player.play(AssetSource('note2.wav'));
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.orange,
                minimumSize: Size(double.infinity, 50),
              ),
              child: Text('Play Note 2', style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              onPressed: () {
                final player = AudioPlayer();
                player.play(AssetSource('note3.wav'));
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.yellow,
                minimumSize: Size(double.infinity, 50),
              ),
              child: Text('Play Note 3', style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              onPressed: () {
                final player = AudioPlayer();
                player.play(AssetSource('note4.wav'));
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.green,
                minimumSize: Size(double.infinity, 50),
              ),
              child: Text('Play Note 4', style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              onPressed: () {
                final player = AudioPlayer();
                player.play(AssetSource('note5.wav'));
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.teal,
                minimumSize: Size(double.infinity, 50),
              ),
              child: Text('Play Note 5', style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              onPressed: () {
                final player = AudioPlayer();
                player.play(AssetSource('note6.wav'));
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
                minimumSize: Size(double.infinity, 50),
              ),
              child: Text('Play Note 6', style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              onPressed: () {
                final player = AudioPlayer();
                player.play(AssetSource('note7.wav'));
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.purple,
                minimumSize: Size(double.infinity, 50),
              ),
              child: Text('Play Note 7', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
