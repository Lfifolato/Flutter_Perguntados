import 'package:flutter/material.dart';

main() => runApp(new Perguntados());

class Perguntados extends StatelessWidget {
  void respostas() {
    print("Sua Resposta");
  }

  final perguntas = [
    'Qual seu animal favorito  ?',
    'Qual e sua cor favorita ? '
        'Qual e seu Signo favorito ?'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Perguntados")),
        ),
        body: Column(
          children: <Widget>[
            Text(perguntas.elementAt(0)),
            RaisedButton(
              child: Text("Pergunta 1"),
              onPressed: () => this.respostas(),
            ),
            RaisedButton(
              child: Text("Pergunta 1"),
              onPressed: () => this.respostas(),
            ),
            RaisedButton(
              child: Text("Pergunta 1"),
              onPressed: () => this.respostas(),
            ),
          ],
        ),
      ),
    );
  }
}
