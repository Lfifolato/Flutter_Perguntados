import 'package:flutter/material.dart';
import 'widget/questao.dart';
import 'widget/respota.dart';

main() => runApp(Perguntados());

class Perguntados extends StatefulWidget {
  @override
  _PerguntadosState createState() => _PerguntadosState();
}

class _PerguntadosState extends State<Perguntados> {
  var perguntaSelecionada = 0;

  void respota() {
    setState(() {
      perguntaSelecionada++;
    });
    print("Sua Respostas");
  }

  final pergunta = [
    "Qual e sua Cor favorita ?",
    "Qual e seu animal Favorito ?",
    "Qual e seu carro Favorito ?",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Center(child: Text("Perguntados"))),
        body: Column(
          children: <Widget>[
            Questao(pergunta.elementAt(perguntaSelecionada)),
            Respotas("Resposta 1", respota),
            Respotas("Resposta 2", respota),
            Respotas("Resposta 3", respota),
          ],
        ),
      ),
    );
  }
}
