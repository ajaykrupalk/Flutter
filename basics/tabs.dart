import 'package:flutter/material.dart';//import material.dart 

void main(){
  runApp(MaterialApp(
    home: FirstRoute(),
    title: 'Drawer',
  ));
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,//Tab is of length 3
        child: Scaffold(
          appBar: AppBar(
            title: Text('Basics'),//appBar title
            centerTitle: true,
            bottom: TabBar(
              tabs: [//giving the tabs icons
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_transit)),
                Tab(icon: Icon(Icons.directions_bike)),
              ],
            ),
          ),
          body: TabBarView(
            children: [//giving the contents of the tab
                Icon(Icons.directions_car),
                Icon(Icons.directions_transit),
                Icon(Icons.directions_bike),
            ],
          ),
      ),
    );
  }
}
