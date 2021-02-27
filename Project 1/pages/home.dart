import 'package:flutter/material.dart';
import 'menupage.dart';
import 'dashboard.dart';

final Color backgroundColor = Color(0xFF4A4A58);

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> with SingleTickerProviderStateMixin {
  bool isCollapsed = true;
  double screenWidth, screenHeight;
  final Duration duration = const Duration(milliseconds: 300);
  AnimationController _controller;
  Animation<double> _scaleAnimation;
  Animation<double> _menuScaleAnimation;
  Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: duration);
    _scaleAnimation = Tween<double>(begin: 1, end: 0.8).animate(_controller);
    _menuScaleAnimation = Tween<double>(begin: 0.5, end: 1).animate(_controller);
    _slideAnimation = Tween<Offset>(begin: Offset(-1, 0), end: Offset(0, 0)).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

void onMenuTap(){

  setState(() {
    if (isCollapsed)
      _controller.forward();
    else
      _controller.reverse();

    isCollapsed = !isCollapsed;
  });
  
}

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: <Widget>[
          MenuPage(slideAnimation: _slideAnimation,menuAnimation: _menuScaleAnimation,),
          Dashboard(
            duration: duration,
            onMenuTap: onMenuTap,
            scaleAnimation: _scaleAnimation,
            isCollapsed: isCollapsed,
            screenWidth: screenWidth,
          ),
        ],
      ),
    );
  }
}
