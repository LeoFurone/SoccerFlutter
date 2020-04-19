import 'package:flutter/material.dart';

class Formulario extends StatelessWidget {
  final TextEditingController controlador;
  final String rotulo;
  final String dica;

  Formulario({
    this.controlador,
    this.rotulo,
    this.dica,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller: controlador,
        style: TextStyle(fontSize: 16.0),
        decoration: InputDecoration(
          labelText: rotulo,
          hintText: dica,
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }
}
