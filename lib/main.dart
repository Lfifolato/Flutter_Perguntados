import 'package:flutter/material.dart';

main() => runApp(new Perguntados());

class perguntaApp extends State<Perguntados> {
  var perguntaSelecionada = 0;

  void respostas() {
    setState(() {
      perguntaSelecionada++;
    });
    print("Sua Resposta");
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual seu animal favorito  ?',
      'Qual e sua cor favorita ? ',
      'Qual e seu Signo favorito ?',
    ];

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
              onPressed: respostas,
            ),
            RaisedButton(
              child: Text("Pergunta 1"),
              onPressed: respostas,
            ),
            RaisedButton(
              child: Text("Pergunta 1"),
              onPressed: respostas,
            ),
          ],
        ),
      ),
    );
  }
}

class Perguntados extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return perguntaApp();
  }
}
