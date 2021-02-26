import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    )); //MaterialApp

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My first app'), 
        centerTitle: true, 
        backgroundColor: Colors.indigo[400]), //AppBar
      body: Padding(
        padding: EdgeInsets.all(90.0),
        child: Text('Hello'),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {}, child: Text('Click'), backgroundColor: Colors.indigo[400]),
    ); //Scaffold
  }
}
