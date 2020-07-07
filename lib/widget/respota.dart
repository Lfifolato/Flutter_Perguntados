import 'package:flutter/material.dart';

class Respotas extends StatelessWidget {
  String texto;

  final void Function() onSelec;

  Respotas(this.texto, this.onSelec);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.blueAccent,
        shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(50.0)),
        child: Text(texto),
        onPressed: onSelec,
      ),
    );
  }
}
