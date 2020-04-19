import 'package:aprendendoflutter/components/cardJogos.dart';
import 'package:aprendendoflutter/components/fundo.dart';
import 'package:aprendendoflutter/models/futebas.dart';
import 'package:flutter/material.dart';

class ListaFutebas extends StatelessWidget {

  final List<Futebas> futebasLista;
  ListaFutebas( {
    Key key, @required this.futebasLista
  } ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: FundoTela.propriedades(),
              child: ListView.builder(
                itemCount: futebasLista.length,
                itemBuilder: (context, indice) {
                final List<Futebas> futebasAoContrario = futebasLista.reversed.toList();
                final jogo = futebasAoContrario[indice];
                return CardJogos(jogo);
                }
          ),
        ),
    );
  }

}
