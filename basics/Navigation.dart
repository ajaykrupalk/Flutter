import 'package:flutter/material.dart';//import material.dart 

void main(){
  runApp(MaterialApp(
    home: FirstRoute(),
    title: 'Navigation Basics',
  ));
}//calling the first route app to run on the home and the application's name is called
//Navigation Basics

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Route'),//appbar with title first route
        backgroundColor: Colors.grey[900],//background color is set
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context) => SecondRoute()),);
          },//pushing the secondroute class onto the stack  
          child: Text('Navigate'),//text of button
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Route'),
        backgroundColor: Colors.grey[900],
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.pop(context);//pop the context stack 
          },
          child: Text('Go Back'),
        ),
      ),
    );
  }
}
