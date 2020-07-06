import 'package:flutter/material.dart';

class Respotas extends StatelessWidget {
  final void Function() onSelc;

  final String texto;

  Respotas(this.texto, this.onSelc);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.blueAccent,
        child: Text(texto),
        onPressed: onSelc,
      ),
    );
  }
}
