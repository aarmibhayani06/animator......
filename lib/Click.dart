
import 'dart:convert';

import 'package:animator6/Model.dart';
import 'package:animator6/mainui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class click extends StatefulWidget {
  Model model =Model(name: '', position: '', image: '', velocity: '', distance: '', description: '');
  click({Key, key,});

  @override
  State<click> createState() => _clickState();
}
List<Model> modelList = [];

class _clickState extends State<click> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            String dataString =
            await rootBundle.loadString('assets/palate.json');
            List jsonData = jsonDecode(dataString);
            modelList = Model.parseList(jsonData);
            Navigator.of(context).push(MaterialPageRoute(builder: (context) =>SlideAnimationn()));
            setState(() {});
          },
          child: Text('Click'),
        ),
      ),
    );
  }
}