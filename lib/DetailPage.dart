import 'package:animator6/Click.dart';
import 'package:animator6/Model.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key, required this.model}) : super(key: key);

  final Model model;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 840,
        width: double.infinity,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 0.6,
              color: Colors.grey.shade300,
              blurStyle: BlurStyle.normal,
            )
          ],
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 20, top: 50, right: 20),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 0.6,
                          color: Colors.black,
                          blurStyle: BlurStyle.normal,
                        )
                      ],
                    ),
                    child: Center(
                      child: Text(
                        widget.model.name,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                      margin: EdgeInsets.only(left: 70),
                      height: 230,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 0.6,
                            blurStyle: BlurStyle.normal,
                          )
                        ],
                      ),
                      child: Column(children: [
                        Center(
                          child: Image.network(
                            widget.model.image,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                            child: Text(
                          widget.model.position,
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )),
                      ])),
                  SizedBox(height: 10),
                  Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 0.6,
                          blurStyle: BlurStyle.normal,
                        )
                      ],
                    ),
                    child: Center(
                      child: Text(
                        widget.model.velocity,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 0.6,
                          color: Colors.black,
                          blurStyle: BlurStyle.normal,
                        )
                      ],
                    ),
                    child: Center(
                      child: Text(
                        widget.model.distance,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 0.6,
                          color: Colors.black,
                          blurStyle: BlurStyle.normal,
                        )
                      ],
                    ),
                    child: Center(
                      child: Text(
                        widget.model.description,
                      ),
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
