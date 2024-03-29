import 'package:flutter/material.dart';

class ContadorDePessoas extends StatefulWidget {
  @override
  _ContadorDePessoasState createState() => _ContadorDePessoasState();
}

class _ContadorDePessoasState extends State<ContadorDePessoas> {
  int _count = 0;
  String _mensagem = "Pode entrar!";

  void _metodo(int operator) {
    setState(() {
      _count += operator;
      if (_count >= 10) {
        _mensagem = "Não pode entrar, está cheio.";
        _count = 10;
      } else if (_count < 0) {
        _count = 0;
      } else {
        _mensagem = "Pode entrar!";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Contsdor de Pessoas",
      home: Material(
        color: Colors.transparent,
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("images/ceu.jpg"),
          )),
          child: Column(
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
                  Padding(
                    //Espacamento de um Widget para o outro
                    padding: EdgeInsets.all(12.0),
                    child: FloatingActionButton(
                      backgroundColor: Colors.transparent,
                      elevation: 0.0,
                      onPressed: () => _metodo(1),
                      child: Text(
                        "+1",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: FloatingActionButton(
                      backgroundColor: Colors.transparent,
                        elevation: 0.0,
                        onPressed: () => _metodo(-1),
                        child: Text(
                          "-1",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24.0,
                          ),
                        )),
                  ),
                ],
              ),
              Text(
                _mensagem,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(ContadorDePessoas());
}
