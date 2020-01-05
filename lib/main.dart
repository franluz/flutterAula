import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    //debugShowCheckedModeBanner: false,
    title: "Frases do dia",
    home: Container(
      //color: Colors.white,
      padding: EdgeInsets.only(top: 40),
      margin: EdgeInsets.all(0),
      decoration: BoxDecoration(
        border: Border.all(width: 3, color: Colors.white),
      ),
      child: Image.asset(
        "images/mesa.jpg",
        fit: BoxFit.scaleDown,
      ),
    ),
  ));
}
