import 'package:flutter/material.dart';

main() => runApp(Perguntados());

class Perguntados extends StatelessWidget {
  void respotas() {
    print('Respota 1');
  }

  final perguntas = [
    'Qual e seu nome ?',
    'Qual e Sua Idade ?',
    'Qual e sua cor favoria ?',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Perguntados')),
        ),
        body: Column(
          children: [
            Text(perguntas.elementAt(0)),
            RaisedButton(
              onPressed: () => this.respotas(),
              child: Text('Respotas 1'),
            ),
            RaisedButton(
              onPressed: () => this.respotas(),
              child: Text('Respotas 2'),
            ),
            RaisedButton(
              onPressed: () => this.respotas(),
              child: Text('Respotas 3'),
            ),
          ],
        ),
      ),
    );
  }
}
