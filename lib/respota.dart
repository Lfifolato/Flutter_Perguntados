import 'package:flutter/material.dart';

class Respotas extends StatelessWidget {
  String texto;

  final void Function() onSelec;

  Respotas(this.texto, this.onSelec);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.blueAccent,
        child: Text(texto),
        onPressed: onSelec,
      ),
    );
  }
}
