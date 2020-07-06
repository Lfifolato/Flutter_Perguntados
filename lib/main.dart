import 'package:flutter/material.dart';

main() => runApp(perguntados());

class perguntados extends StatefulWidget {
  perguntados({Key key}) : super(key: key);

  @override
  _perguntadosState createState() => _perguntadosState();
}

class _perguntadosState extends State<perguntados> {
  var perguntaSelecionada = 0;

  final perguntas = [
    "Qual e Seu Animal favorito ?",
    "Qual e sua Cor favorita ? ",
    "Qual e seu Carro Favorito ?"
  ];

  void respostas() {
    setState(() {
      perguntaSelecionada++;
    });
    print("Sua Respostas");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Perguntados")),
        ),
        body: Column(
          children: <Widget>[
            Text(perguntas.elementAt(perguntaSelecionada)),
            RaisedButton(
              child: Text("Respota 1"),
              onPressed: () => this.respostas(),
            ),
            RaisedButton(
              child: Text("Respota 2"),
              onPressed: () => this.respostas(),
            ),
            RaisedButton(
              child: Text("Respota 3"),
              onPressed: () => this.respostas(),
            ),
          ],
        ),
      ),
    );
  }
}
