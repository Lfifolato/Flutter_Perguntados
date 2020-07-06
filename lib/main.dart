import 'package:flutter/material.dart';
import './questao.dart';
import './respotas.dart';

main() => runApp(perguntados());

// ignore: camel_case_types
class perguntados extends StatefulWidget {
  perguntados({Key key}) : super(key: key);

  @override
  perguntadosState createState() => perguntadosState();
}

// ignore: camel_case_types
class perguntadosState extends State<perguntados> {
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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Perguntados")),
        ),
        body: Column(
          children: <Widget>[
            Questao(perguntas[perguntaSelecionada]),
            Respotas("Respota 1", respostas),
            Respotas("Respota 2", respostas),
            Respotas("Respota 3", respostas),
          ],
        ),
      ),
    );
  }
}
