import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

int hexcolor(String c) {
  String sColor = '0xff' + c;
  sColor = sColor.replaceAll('#', '');
  int dColor = int.parse(sColor);
  return dColor;
}

void main() {
  runApp(MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Sample App'),
          ),
          body: Center(
            child: Container(
              child: Text('Sankalp'),
              alignment: Alignment.center,
              constraints: BoxConstraints.expand(),
              decoration: BoxDecoration(
                gradient: SweepGradient(colors:[
                  Color(hexcolor('#662078C')),
                Color(hexcolor('#EB1E79')),
                ],
                // begin: Alignment.topCenter,
                // end: Alignment.bottomLeft,
                 stops: [0.2,1.0],
                 startAngle: 0.5,
                 endAngle: 1.0,
                )),
            ),
          ))));
}
