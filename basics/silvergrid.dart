import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Main(),
));

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: CustomScrollView(
  primary: false,
  slivers: <Widget>[
    SliverAppBar(
        expandedHeight: 200.0,
        title: Text('Get to know all about COVID-19'),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(30),
      )),
    ),
    SliverPadding(
      padding: const EdgeInsets.all(20),
      sliver: SliverGrid.count(
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8),
            child: Column(
                      children:  [Text("He'd have you all unravel at the"),
                                  SizedBox(height: 20.0),
                                  Text("He'd have you all unravel at the"),]
                      ),
            color: Colors.green[100],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Heed not the rabble'),
            color: Colors.green[200],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Sound of screams but the'),
            color: Colors.green[300],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Who scream'),
            color: Colors.green[400],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Revolution is coming...'),
            color: Colors.green[500],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Revolution, they...'),
            color: Colors.green[600],
          ),
        ],
      ),
    ),
  ],
  )
  );
  }
}
