import 'package:flutter/material.dart'; //import material.dart
import 'secondpage.dart';
import 'thirdpage.dart';
import 'fourthpage.dart';
import 'fifthpage.dart';

void main() {
  runApp(MaterialApp(
    home: FirstRoute(),
    title: 'Drawer',
  ));
} //calling the first route app to run on the home and the application's name is called
//Navigation Basics

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        title: Text('Dashboard'),
        backgroundColor: Colors.indigo[700],
      ),
      body: CustomScrollView(
        primary: false,
        slivers: <Widget>[
          SliverPadding(
            padding: const EdgeInsets.all(20),
            sliver: SliverGrid.count(
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              crossAxisCount: 2,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Column(children: [
                    Text("Confirmed",
                        style: TextStyle(
                          fontSize: 14,
                        )),
                    SizedBox(height: 20.0),
                    Text("11124332", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                    Text("Cases"),
                  ]),
                  color: Colors.grey[200],
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Column(children: [
                    Text("Active",
                        style: TextStyle(
                          fontSize: 14,
                        )),
                    SizedBox(height: 20.0),
                    Text("11124332", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                    Text("Cases"),
                  ]),
                  color: Colors.grey[200],
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Column(children: [
                    Text("Recovered",
                        style: TextStyle(
                          fontSize: 14,
                        )),
                    SizedBox(height: 20.0),
                    Text("11124332", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                    Text("Cases"),
                  ]),
                  color: Colors.grey[200],
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Column(children: [
                    Text("Deceased",
                        style: TextStyle(
                          fontSize: 14,
                        )),
                    SizedBox(height: 20.0),
                    Text("11124332", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                    Text("Cases"),
                  ]),
                  color: Colors.grey[200],
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Column(children: [
                    Text("Tested",
                        style: TextStyle(
                          fontSize: 14,
                        )),
                    SizedBox(height: 20.0),
                    Text("11124332", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                    Text("Cases"),
                  ]),
                  color: Colors.grey[200],
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Column(children: [
                    Text("Vaccinated",
                        style: TextStyle(
                          fontSize: 14,
                        )),
                    SizedBox(height: 20.0),
                    Text("11124332", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                    Text("Cases"),
                  ]),
                  color: Colors.grey[200],
                ),
              ],
            ),
          ),
        ],
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
