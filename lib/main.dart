import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Contsdor de Pessoas",
      home: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            "images/bg.jpg",
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Pessoas: 0",
                style: TextStyle(
                  fontSize: 32.0,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
