import 'package:animations/animations.dart';
import 'package:animator6/Click.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyCustomWidget extends StatefulWidget {
  @override
  _MyCustomWidgetState createState() => _MyCustomWidgetState();
}

class _MyCustomWidgetState extends State<MyCustomWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            OpenContainer(
              closedBuilder: (_, openContainer) {
                return Container(
                  height: 80,
                  width: 80,
                  child: Center(
                    child: Text(
                      'App Logo',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                );
              },
              openColor: Color(0xff412EEF),
              closedElevation: 20,
              closedShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              transitionDuration: Duration(milliseconds: 900),
              openBuilder: (_, closeContainer) {
                return click();
              },
            ),
          ],
        ),
      ),
    );
  }
}
