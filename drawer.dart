import 'package:flutter/material.dart';//import material.dart 

void main(){
  runApp(MaterialApp(
    home: FirstRoute(),
    title: 'Drawer',
  ));
}//calling the first route app to run on the home and the application's name is called
//Navigation Basics

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Side Menu Simple'),
      ),
      body: Center(
        child: Text('Home Page',
        style: TextStyle(
          fontSize: 28.0,
        )),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.grey[500],
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: (){
                 Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: (){
                 Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
