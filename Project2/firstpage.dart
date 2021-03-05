import 'package:flutter/material.dart';
import 'firstpage.dart';
import 'secondpage.dart';
import 'thirdpage.dart';
import 'fourthpage.dart';
import 'fifthpage.dart';

class FirstRoute extends StatefulWidget {
  @override
  _FirstRouteState createState() => _FirstRouteState();
}

class _FirstRouteState extends State<FirstRoute> {

  int variable=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        backgroundColor: Colors.indigo[700],
      ),
      body: Center(
        child: Text('${variable}',
        style: TextStyle(
          fontSize: 28.0,
        )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState((){
            variable++;
          });
        },
        child: Icon(Icons.navigation),
        backgroundColor: Colors.indigo[700],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center, children: [
                Text('COVID-19', style: TextStyle(color: Colors.white, fontSize: 28)),
                Text('Tracking', style: TextStyle(color: Colors.white, fontSize: 16)),
              ]),
              decoration: BoxDecoration(
                color: Colors.indigo[700],
              ),
            ),
            ListTile(
              title: Text('Confirmed', style: TextStyle(fontSize: 20)),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SecondRoute()));
              },
            ),
            ListTile(
              title: Text('Active', style: TextStyle(fontSize: 20)),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ThirdRoute()));
              },
            ),
            ListTile(
              title: Text('Recovered', style: TextStyle(fontSize: 20)),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => FourthRoute()));
              },
            ),
            ListTile(
              title: Text('Deceased', style: TextStyle(fontSize: 20)),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => FifthRoute()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
