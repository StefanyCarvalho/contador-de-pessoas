import 'package:flutter/material.dart';

class ContadorDePessoas extends StatefulWidget {
  @override
  _ContadorDePessoasState createState() => _ContadorDePessoasState();
}

class _ContadorDePessoasState extends State<ContadorDePessoas> {
  int _count = 0;

  void _metodo(int operator) {
    setState(() {
      _count += operator;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
                "Pessoas: $_count",
                style: TextStyle(
                  fontSize: 32.0,
                  color: Colors.white,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                  onPressed: () => _metodo(1),
                    child: Text(
                      "+1",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                      ),
                    ),
                  ),
                  FlatButton(
                    onPressed: () => _metodo(-1),
                    child: Text(
                      "-1",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}


void main() {
  runApp(
    ContadorDePessoas()
  );
}
