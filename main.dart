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
        backgroundColor: Colors.indigo[400]
        ), //AppBar
      body: Center(
        child: Image.network('https://images.unsplash.com/photo-1537420327992-d6e192287183?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {}, 
        child: Text('Click'), 
        backgroundColor: Colors.indigo[400]),
    ); //Scaffold
  }
}
