import 'package:aprendendoflutter/components/formulario.dart';
import 'package:aprendendoflutter/components/fundo.dart';
import 'package:aprendendoflutter/models/futebas.dart';
import 'package:flutter/material.dart';

class FormJogo extends StatelessWidget {
  final TextEditingController _controladorCampoGol = TextEditingController();
  final TextEditingController _controladorCampoData = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        Container(
          decoration: FundoTela.propriedades(),
          child: Center(
            child: Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Text("Registrar futebas", style: TextStyle(fontSize: 18)),
                  ),
                  Formulario(
                    controlador: _controladorCampoGol,
                    rotulo: "Quantidade de gols",
                    dica: "0",),
                  Formulario(
                    controlador: _controladorCampoData,
                    rotulo: "Data",
                    dica: "25 02 1999",),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: RaisedButton(
                      child: Text("Enviar jogo"),
                      onPressed: () => _criaFutebas(context),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }

  void _criaFutebas(BuildContext context){
    final int gols = int.tryParse(_controladorCampoGol.text);
    final String data = _controladorCampoData.text;

    if (gols != null && data != '' && data.contains(' ')) {
      final futebasCriado = Futebas(gols,data);
      Navigator.pop(context, futebasCriado);
    }
  }

}
