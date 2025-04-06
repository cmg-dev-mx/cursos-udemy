
import 'package:flutter/material.dart';

void main() {
  runApp(Contacts());
}

class Contacts extends StatefulWidget {
  @override
  _ContactsState createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Sponsors Screen'),
    );
  } 
}
