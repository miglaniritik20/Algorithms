import 'package:algorithms/Design/HomeSite.dart';
import 'package:flutter/material.dart';

import 'Algorithms.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _index=0;
  final List<Widget> _barItems=[
    HomeFinal(),
    DifferentAlgorithms(),
  ];
  void _onTapBar(int index){
    setState(() {
      _index=index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _barItems[_index],
      bottomNavigationBar: new BottomNavigationBar(
          backgroundColor: Colors.indigo,
          onTap: _onTapBar,
          currentIndex: _index,
          items: [
            new BottomNavigationBarItem(
              icon:new Icon(Icons.border_color),
              backgroundColor: Colors.deepPurple,
              title: Text("Techniques"),
            ),
            new BottomNavigationBarItem(
                icon: new Icon(Icons.image,),
                title: new Text("Algorithms"),
                backgroundColor: Colors.deepPurple
            ),
          ]),
    );
  }
}
