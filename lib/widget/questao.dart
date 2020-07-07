import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  String texto;

  Questao(this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      width: double.infinity,
      child: Text(
        texto,
        style: TextStyle(fontSize: 26),
        textAlign: TextAlign.center,
      ),
    );
  }
}
