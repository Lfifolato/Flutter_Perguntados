import 'package:flutter/material.dart';

main() => runApp(new _Perguntados());

class _perguntaApp extends State<_Perguntados> {
  var perguntaSelecionada = 0;

  void _respostas() {
    setState(() {
      perguntaSelecionada++;
    });
    print("Sua Resposta");
  }

  final perguntas = [
    'Qual seu animal favorito  ?',
    'Qual e sua cor favorita ? ',
    'Qual e seu Signo favorito ?',
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
            Text(perguntas[perguntaSelecionada]),
            RaisedButton(
              child: Text("Pergunta 1"),
              onPressed: _respostas,
            ),
            RaisedButton(
              child: Text("Pergunta 1"),
              onPressed: _respostas,
            ),
            RaisedButton(
              child: Text("Pergunta 1"),
              onPressed: _respostas,
            ),
          ],
        ),
      ),
    );
  }
}

class _Perguntados extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _perguntaApp();
  }
}
