import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeStateful(),
  ));
}

class HomeStateful extends StatefulWidget {
  @override
  _HomeStatefulState createState() => _HomeStatefulState();
}

class _HomeStatefulState extends State<HomeStateful> {
  var _listaFrases = [
    "O amor é fogo que arde sem se ver",
    "O azar persegue os culpados",
    "Quando olhar pra dentro do abismo talvez ele olhe de volta"
  ];
  var _frase = "Clique abaixo para ver a frase do dia";

  void gerarFrase() {
    this._frase = _listaFrases[Random().nextInt(_listaFrases.length)];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Fases do dia"),
          backgroundColor: Colors.lightGreen,
        ),
        body: Container(
          padding: EdgeInsets.all(16),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset("images/logo.png"),
              Text(
                "$_frase",
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 17,
                    fontStyle: FontStyle.italic,
                    color: Colors.black),
              ),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    gerarFrase();
                  });
                  print("$_frase");
                },
                color: Colors.lightGreen,
                child: Text("Nova fase",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              )
            ],
          ),
        ));
  }
}
